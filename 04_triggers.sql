-- 04_triggers.sql

-- Prevent negative balances (redundant if handled in procedures, but protects direct DML)
CREATE OR REPLACE TRIGGER trg_accounts_no_negative
BEFORE UPDATE OF balance ON accounts
FOR EACH ROW
BEGIN
  IF :NEW.balance < 0 THEN
    RAISE_APPLICATION_ERROR(-20010, 'Negative balance not allowed');
  END IF;
END;
/

-- Flag unusually large transactions or rapid activity
CREATE OR REPLACE TRIGGER trg_txn_fraud_flag
AFTER INSERT ON transactions
FOR EACH ROW
DECLARE
  v_threshold NUMBER := 200000; -- Adjust as needed
  v_count_last_min NUMBER;
BEGIN
  -- Rule 1: Amount threshold
  IF :NEW.amount >= v_threshold THEN
    INSERT INTO fraud_alerts(alert_id, txn_id, alert_code, severity, description)
    VALUES (seq_alert.NEXTVAL, :NEW.txn_id, 'AMOUNT_THRESHOLD', 'HIGH',
            'Transaction >= ' || v_threshold || ' ' || :NEW.currency);
  END IF;

  -- Rule 2: Burst activity (more than 5 txns in 1 minute per account)
  SELECT COUNT(*) INTO v_count_last_min
  FROM transactions
  WHERE account_id = :NEW.account_id
    AND txn_ts > SYSTIMESTAMP - INTERVAL '1' MINUTE;

  IF v_count_last_min > 5 THEN
    INSERT INTO fraud_alerts(alert_id, txn_id, alert_code, severity, description)
    VALUES (seq_alert.NEXTVAL, :NEW.txn_id, 'BURST_ACTIVITY', 'MEDIUM',
            'More than 5 transactions in the last minute');
  END IF;
END;
/
