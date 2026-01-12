# 🏦 Banking System using Oracle PL/SQL

This project demonstrates a real-world banking system implemented using Oracle SQL and PL/SQL.

It covers core banking operations such as account management, transactions, loans, auditing, fraud detection, and reporting.

---

## 📌 Features

- Open and close bank accounts
- Deposit, withdraw, and transfer funds
- Loan EMI calculation and monthly repayments
- Centralized audit logging
- Fraud detection using database triggers
- Reporting views for customers, transactions, and fraud
- Daily ETL summaries using MERGE statements

---

## 🛠️ Technologies Used

- Oracle SQL
- Oracle PL/SQL
- Packages
- Triggers
- Views
- Sequences

---

## 📂 Project Structure

- 01_tables.sql -- Database tables
- 02_inserts.sql -- Actual Data
- 03_packages.sql -- Business logic packages
- 04_triggers.sql -- Data integrity and fraud detection
- 05_views.sql -- Reporting views
- 06_summarytable_etlproc.sql -- Daily summary ETL procedures
- 07_sequence_indexes.sql - Sequences and Indexes used

---

## 🚀 How to Run the Project

1. Run `01_tables.sql`
2. Run `02_inserts.sql`
3. Run `07_sequence_indexes.sql`
4. Compile `03_packages.sql`
5. Compile `04_triggers.sql`
6. Create views using `05_views.sql`
7. Run ETL using `06_summarytable_etlproc`

---

## 🎯 Purpose of the Project

This project was built to demonstrate enterprise-level PL/SQL design concepts such as:

- Business logic encapsulation
- Data integrity enforcement
- Auditability
- Performance optimization
- Real-world banking workflows

---

## 👩‍💻 Author

**Praveena G**  
Oracle PL/SQL Developer

