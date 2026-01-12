-- branches
CREATE TABLE branches (
  branch_id    NUMBER PRIMARY KEY,
  branch_name  VARCHAR2(100) NOT NULL,
  city         VARCHAR2(100) NOT NULL,
  is_active    CHAR(1) DEFAULT 'Y' CHECK (is_active IN ('Y','N'))
);

-- Customers
CREATE TABLE customers (
  customer_id   NUMBER PRIMARY KEY,
  full_name     VARCHAR2(150) NOT NULL,
  dob           DATE NOT NULL,
  email         VARCHAR2(150),
  phone         VARCHAR2(20),
  kyc_status    VARCHAR2(20) DEFAULT 'PENDING' CHECK (kyc_status IN ('PENDING','VERIFIED','REJECTED')),
  created_at    DATE DEFAULT SYSDATE
);

-- Accounts
CREATE TABLE accounts (
  account_id     NUMBER PRIMARY KEY,
  customer_id    NUMBER NOT NULL,
  branch_id      NUMBER NOT NULL,
  account_type   VARCHAR2(20) CHECK (account_type IN ('SAVINGS','CURRENT')),
  status         VARCHAR2(20) DEFAULT 'ACTIVE' CHECK (status IN ('ACTIVE','CLOSED','FROZEN')),
  balance        NUMBER(18,2) DEFAULT 0 NOT NULL,
  opened_at      DATE DEFAULT SYSDATE,
  closed_at      DATE,
  CONSTRAINT fk_acc_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  CONSTRAINT fk_acc_branch FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

-- Transactions
CREATE TABLE transactions (
  txn_id        NUMBER PRIMARY KEY,
  account_id    NUMBER NOT NULL,
  txn_type      VARCHAR2(20) CHECK (txn_type IN ('DEPOSIT','WITHDRAW','TRANSFER_IN','TRANSFER_OUT')),
  amount        NUMBER(18,2) CHECK (amount > 0),
  currency      VARCHAR2(3) DEFAULT 'INR',
  txn_ts        TIMESTAMP DEFAULT SYSTIMESTAMP,
  ref_txn_id    NUMBER, -- to link paired transfer in/out
  notes         VARCHAR2(200),
  CONSTRAINT fk_txn_account FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

-- Loans
CREATE TABLE loans (
  loan_id         NUMBER PRIMARY KEY,
  customer_id     NUMBER NOT NULL,
  principal       NUMBER(18,2) CHECK (principal > 0),
  interest_rate   NUMBER(6,4) CHECK (interest_rate > 0), -- annual rate (e.g., 0.1050 = 10.50%)
  term_months     NUMBER CHECK (term_months > 0),
  start_date      DATE NOT NULL,
  status          VARCHAR2(20) DEFAULT 'ACTIVE' CHECK (status IN ('ACTIVE','CLOSED','DEFAULT')),
  balance_outstanding NUMBER(18,2),
  CONSTRAINT fk_loan_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Fraud alerts
CREATE TABLE fraud_alerts (
  alert_id       NUMBER PRIMARY KEY,
  txn_id         NUMBER NOT NULL,
  alert_code     VARCHAR2(50) NOT NULL,
  severity       VARCHAR2(10) CHECK (severity IN ('LOW','MEDIUM','HIGH')),
  description    VARCHAR2(200),
  created_ts     TIMESTAMP DEFAULT SYSTIMESTAMP,
  CONSTRAINT fk_alert_txn FOREIGN KEY (txn_id) REFERENCES transactions(txn_id)
);

-- Audit log
CREATE TABLE audit_log (
  audit_id     NUMBER PRIMARY KEY,
  entity_type  VARCHAR2(30) NOT NULL, -- CUSTOMER/ACCOUNT/TRANSACTION/LOAN
  entity_id    NUMBER NOT NULL,
  action       VARCHAR2(30) NOT NULL, -- CREATE/UPDATE/CLOSE/TRANSFER
  details      VARCHAR2(4000),
  created_ts   TIMESTAMP DEFAULT SYSTIMESTAMP
);

