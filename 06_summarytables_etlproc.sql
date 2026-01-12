-- Summary tables
CREATE TABLE txn_daily_summary (
  txn_date      DATE,
  branch_id     NUMBER,
  deposits_amt  NUMBER(18,2),
  withdrawals_amt NUMBER(18,2),
  transfers_out_amt NUMBER(18,2),
  transfers_in_amt  NUMBER(18,2),
  PRIMARY KEY (txn_date, branch_id)
);

CREATE TABLE loan_portfolio_daily (
  snapshot_date DATE,
  branch_id     NUMBER,
  active_loans  NUMBER,
  closed_loans  NUMBER,
  default_loans NUMBER,
  outstanding_amt NUMBER(18,2),
  PRIMARY KEY (snapshot_date, branch_id)
);

-- ETL procedure to populate summaries
CREATE OR REPLACE PROCEDURE pr_refresh_daily_summaries(p_date DATE DEFAULT TRUNC(SYSDATE)) AS
BEGIN
  -- Transactions summary
  MERGE INTO txn_daily_summary d
  USING (
    SELECT TRUNC(t.txn_ts) AS txn_date, a.branch_id,
           SUM(CASE WHEN t.txn_type='DEPOSIT' THEN t.amount ELSE 0 END) AS deposits_amt,
           SUM(CASE WHEN t.txn_type='WITHDRAW' THEN t.amount ELSE 0 END) AS withdrawals_amt,
           SUM(CASE WHEN t.txn_type='TRANSFER_OUT' THEN t.amount ELSE 0 END) AS transfers_out_amt,
           SUM(CASE WHEN t.txn_type='TRANSFER_IN'  THEN t.amount ELSE 0 END) AS transfers_in_amt
    FROM transactions t
    JOIN accounts a ON a.account_id = t.account_id
    WHERE TRUNC(t.txn_ts) = p_date
    GROUP BY TRUNC(t.txn_ts), a.branch_id
  ) s
  ON (d.txn_date = s.txn_date AND d.branch_id = s.branch_id)
  WHEN MATCHED THEN UPDATE SET
    d.deposits_amt      = s.deposits_amt,
    d.withdrawals_amt   = s.withdrawals_amt,
    d.transfers_out_amt = s.transfers_out_amt,
    d.transfers_in_amt  = s.transfers_in_amt
  WHEN NOT MATCHED THEN INSERT (txn_date, branch_id, deposits_amt, withdrawals_amt, transfers_out_amt, transfers_in_amt)
  VALUES (s.txn_date, s.branch_id, s.deposits_amt, s.withdrawals_amt, s.transfers_out_amt, s.transfers_in_amt);

  -- Loan portfolio summary
  MERGE INTO loan_portfolio_daily lpd
  USING (
    SELECT p_date AS snapshot_date,
           a.branch_id,
           SUM(CASE WHEN l.status='ACTIVE'  THEN 1 ELSE 0 END) AS active_loans,
           SUM(CASE WHEN l.status='CLOSED'  THEN 1 ELSE 0 END) AS closed_loans,
           SUM(CASE WHEN l.status='DEFAULT' THEN 1 ELSE 0 END) AS default_loans,
           SUM(NVL(l.balance_outstanding,0)) AS outstanding_amt
    FROM loans l
    JOIN customers c ON c.customer_id = l.customer_id
    LEFT JOIN accounts a ON a.customer_id = c.customer_id -- assuming primary servicing branch via account
    GROUP BY a.branch_id
  ) s
  ON (lpd.snapshot_date = s.snapshot_date AND lpd.branch_id = s.branch_id)
  WHEN MATCHED THEN UPDATE SET
    lpd.active_loans    = s.active_loans,
    lpd.closed_loans    = s.closed_loans,
    lpd.default_loans   = s.default_loans,
    lpd.outstanding_amt = s.outstanding_amt
  WHEN NOT MATCHED THEN INSERT (snapshot_date, branch_id, active_loans, closed_loans, default_loans, outstanding_amt)
  VALUES (s.snapshot_date, s.branch_id, s.active_loans, s.closed_loans, s.default_loans, s.outstanding_amt);
END;
/
