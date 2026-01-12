-- 05_reporting.sql

-- Customer portfolio view
CREATE OR REPLACE VIEW vw_customer_portfolio AS
SELECT
  c.customer_id,
  c.full_name,
  c.kyc_status,
  a.account_id,
  a.account_type,
  a.status AS account_status,
  a.balance,
  l.loan_id,
  l.status AS loan_status,
  l.balance_outstanding
FROM customers c
LEFT JOIN accounts a ON a.customer_id = c.customer_id
LEFT JOIN loans l    ON l.customer_id = c.customer_id;

-- Daily transaction summary view
CREATE OR REPLACE VIEW vw_daily_transactions AS
SELECT
  TRUNC(t.txn_ts) AS txn_date,
  a.branch_id,
  t.txn_type,
  COUNT(*) AS txn_count,
  SUM(t.amount) AS total_amount
FROM transactions t
JOIN accounts a ON a.account_id = t.account_id
GROUP BY TRUNC(t.txn_ts), a.branch_id, t.txn_type;

-- Fraud summary view
CREATE OR REPLACE VIEW vw_fraud_summary AS
SELECT
  TRUNC(f.created_ts) AS alert_date,
  a.branch_id,
  f.alert_code,
  f.severity,
  COUNT(*) AS alert_count
FROM fraud_alerts f
JOIN transactions t ON t.txn_id = f.txn_id
JOIN accounts a     ON a.account_id = t.account_id
GROUP BY TRUNC(f.created_ts), a.branch_id, f.alert_code, f.severity;
