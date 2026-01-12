--pkg1
CREATE OR REPLACE PACKAGE pkg_util AS
  FUNCTION calc_emi(principal NUMBER, annual_rate NUMBER, term_months NUMBER) RETURN NUMBER;
  PROCEDURE write_audit(p_entity_type VARCHAR2, p_entity_id NUMBER, p_action VARCHAR2, p_details VARCHAR2);
END pkg_util;
/

--pkg2
CREATE OR REPLACE PACKAGE pkg_banking AS
  PROCEDURE open_account(p_customer_id NUMBER, p_branch_id NUMBER, p_account_type VARCHAR2, p_initial_deposit NUMBER, o_account_id OUT NUMBER);
  PROCEDURE close_account(p_account_id NUMBER);
  PROCEDURE deposit(p_account_id NUMBER, p_amount NUMBER, p_notes VARCHAR2 DEFAULT NULL);
  PROCEDURE withdraw(p_account_id NUMBER, p_amount NUMBER, p_notes VARCHAR2 DEFAULT NULL);
  PROCEDURE transfer(p_from_account NUMBER, p_to_account NUMBER, p_amount NUMBER, p_notes VARCHAR2 DEFAULT NULL);
  PROCEDURE loan_monthly_payment(p_loan_id NUMBER, p_amount NUMBER);
END pkg_banking;
/

--pkg_body1
CREATE OR REPLACE PACKAGE BODY pkg_util AS
  FUNCTION calc_emi(principal NUMBER, annual_rate NUMBER, term_months NUMBER) RETURN NUMBER IS
    monthly_rate NUMBER := annual_rate / 12; -- Annual rate in decimal (e.g., 0.115)
    pow NUMBER;
    emi NUMBER;
  BEGIN
    IF term_months <= 0 OR principal <= 0 OR annual_rate <= 0 THEN
      RETURN NULL;
    END IF;
    pow := POWER(1 + monthly_rate, term_months);
    emi := principal * monthly_rate * (pow / (pow - 1));
    RETURN ROUND(emi, 2);
  END;

  PROCEDURE write_audit(p_entity_type VARCHAR2, p_entity_id NUMBER, p_action VARCHAR2, p_details VARCHAR2) IS
  BEGIN
    INSERT INTO audit_log(audit_id, entity_type, entity_id, action, details)
    VALUES (seq_audit.NEXTVAL, p_entity_type, p_entity_id, p_action, p_details);
  END;
END pkg_util;
/


--pkg_body2
CREATE OR REPLACE PACKAGE BODY pkg_banking AS

  PROCEDURE open_account(p_customer_id NUMBER, p_branch_id NUMBER, p_account_type VARCHAR2, p_initial_deposit NUMBER, o_account_id OUT NUMBER) IS
  BEGIN
    o_account_id := seq_account.NEXTVAL;
    INSERT INTO accounts(account_id, customer_id, branch_id, account_type, balance)
    VALUES (o_account_id, p_customer_id, p_branch_id, p_account_type, 0);

    IF NVL(p_initial_deposit,0) > 0 THEN
      deposit(o_account_id, p_initial_deposit, 'Initial deposit');
    END IF;

    pkg_util.write_audit('ACCOUNT', o_account_id, 'CREATE', 'Opened account with initial deposit: ' || p_initial_deposit);
  END;

  PROCEDURE close_account(p_account_id NUMBER) IS
    v_balance NUMBER;
  BEGIN
    SELECT balance INTO v_balance FROM accounts WHERE account_id = p_account_id FOR UPDATE;
    IF v_balance <> 0 THEN
      RAISE_APPLICATION_ERROR(-20001, 'Cannot close account with non-zero balance');
    END IF;
    UPDATE accounts SET status = 'CLOSED', closed_at = SYSDATE WHERE account_id = p_account_id;
    pkg_util.write_audit('ACCOUNT', p_account_id, 'CLOSE', 'Account closed');
  END;

  PROCEDURE deposit(p_account_id NUMBER, p_amount NUMBER, p_notes VARCHAR2 DEFAULT NULL) IS
    v_txn_id NUMBER := seq_txn.NEXTVAL;
  BEGIN
    UPDATE accounts SET balance = balance + p_amount WHERE account_id = p_account_id;
    INSERT INTO transactions(txn_id, account_id, txn_type, amount, notes)
    VALUES (v_txn_id, p_account_id, 'DEPOSIT', p_amount, p_notes);
    pkg_util.write_audit('TRANSACTION', v_txn_id, 'CREATE', 'Deposit of ' || p_amount || ' into ' || p_account_id);
  END;

  PROCEDURE withdraw(p_account_id NUMBER, p_amount NUMBER, p_notes VARCHAR2 DEFAULT NULL) IS
    v_balance NUMBER;
    v_txn_id NUMBER := seq_txn.NEXTVAL;
  BEGIN
    SELECT balance INTO v_balance FROM accounts WHERE account_id = p_account_id FOR UPDATE;
    IF v_balance < p_amount THEN
      RAISE_APPLICATION_ERROR(-20002, 'Insufficient funds');
    END IF;

    UPDATE accounts SET balance = balance - p_amount WHERE account_id = p_account_id;
    INSERT INTO transactions(txn_id, account_id, txn_type, amount, notes)
    VALUES (v_txn_id, p_account_id, 'WITHDRAW', p_amount, p_notes);

    pkg_util.write_audit('TRANSACTION', v_txn_id, 'CREATE', 'Withdrawal of ' || p_amount || ' from ' || p_account_id);
  END;

  PROCEDURE transfer(p_from_account NUMBER, p_to_account NUMBER, p_amount NUMBER, p_notes VARCHAR2 DEFAULT NULL) IS
    v_from_balance NUMBER;
    v_txn_out NUMBER := seq_txn.NEXTVAL;
    v_txn_in  NUMBER := seq_txn.NEXTVAL;
  BEGIN
    IF p_from_account = p_to_account THEN
      RAISE_APPLICATION_ERROR(-20003, 'Cannot transfer to the same account');
    END IF;

    SELECT balance INTO v_from_balance FROM accounts WHERE account_id = p_from_account FOR UPDATE;
    IF v_from_balance < p_amount THEN
      RAISE_APPLICATION_ERROR(-20002, 'Insufficient funds for transfer');
    END IF;

    UPDATE accounts SET balance = balance - p_amount WHERE account_id = p_from_account;
    UPDATE accounts SET balance = balance + p_amount WHERE account_id = p_to_account;

    INSERT INTO transactions(txn_id, account_id, txn_type, amount, notes)
    VALUES (v_txn_out, p_from_account, 'TRANSFER_OUT', p_amount, p_notes);

    INSERT INTO transactions(txn_id, account_id, txn_type, amount, ref_txn_id, notes)
    VALUES (v_txn_in, p_to_account, 'TRANSFER_IN', p_amount, v_txn_out, p_notes);

    -- Cross-link transfer pair
    UPDATE transactions SET ref_txn_id = v_txn_in WHERE txn_id = v_txn_out;

    pkg_util.write_audit('TRANSACTION', v_txn_out, 'TRANSFER', 'Transfer ' || p_amount || ' from ' || p_from_account || ' to ' || p_to_account);
  END;

  PROCEDURE loan_monthly_payment(p_loan_id NUMBER, p_amount NUMBER) IS
    v_balance NUMBER;
    v_status  VARCHAR2(20);
  BEGIN
    SELECT balance_outstanding, status INTO v_balance, v_status FROM loans WHERE loan_id = p_loan_id FOR UPDATE;
    IF v_status <> 'ACTIVE' THEN
      RAISE_APPLICATION_ERROR(-20004, 'Loan not active');
    END IF;

    IF p_amount <= 0 THEN
      RAISE_APPLICATION_ERROR(-20005, 'Payment must be positive');
    END IF;

    v_balance := v_balance - p_amount;
    IF v_balance <= 0 THEN
      UPDATE loans SET balance_outstanding = 0, status = 'CLOSED' WHERE loan_id = p_loan_id;
      pkg_util.write_audit('LOAN', p_loan_id, 'CLOSE', 'Loan fully repaid');
    ELSE
      UPDATE loans SET balance_outstanding = v_balance WHERE loan_id = p_loan_id;
      pkg_util.write_audit('LOAN', p_loan_id, 'UPDATE', 'Monthly payment of ' || p_amount || ', new balance ' || v_balance);
    END IF;
  END;

END pkg_banking;
/

