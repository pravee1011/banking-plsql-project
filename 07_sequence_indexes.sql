-- Sequences
CREATE SEQUENCE seq_customer START WITH 1001 INCREMENT BY 1;
CREATE SEQUENCE seq_account  START WITH 2001 INCREMENT BY 1;
CREATE SEQUENCE seq_txn      START WITH 3001 INCREMENT BY 1;
CREATE SEQUENCE seq_loan     START WITH 4001 INCREMENT BY 1;
CREATE SEQUENCE seq_alert    START WITH 5001 INCREMENT BY 1;
CREATE SEQUENCE seq_audit    START WITH 6001 INCREMENT BY 1;

-- Helpful indexes
CREATE INDEX idx_txn_account_ts ON transactions(account_id, txn_ts);
CREATE INDEX idx_acc_customer   ON accounts(customer_id);
CREATE INDEX idx_loan_customer  ON loans(customer_id);
