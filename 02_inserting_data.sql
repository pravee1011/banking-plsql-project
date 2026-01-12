-- Branches 
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (101, 'Madhuravoyal Main', 'Chennai', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (102, 'Velachery', 'Chennai', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (103, 'T Nagar', 'Chennai', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (104, 'Anna Nagar', 'Chennai', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (105, 'Tambaram', 'Chennai', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (106, 'MG Road', 'Bengaluru', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (107, 'Whitefield', 'Bengaluru', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (108, 'Electronic City', 'Bengaluru', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (109, 'Indiranagar', 'Bengaluru', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (110, 'Koramangala', 'Bengaluru', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (111, 'Bandra West', 'Mumbai', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (112, 'Andheri East', 'Mumbai', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (113, 'Powai', 'Mumbai', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (114, 'Dadar', 'Mumbai', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (115, 'Colaba', 'Mumbai', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (116, 'Connaught Place', 'Delhi', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (117, 'Karol Bagh', 'Delhi', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (118, 'Dwarka', 'Delhi', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (119, 'Saket', 'Delhi', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (120, 'Lajpat Nagar', 'Delhi', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (121, 'Park Street', 'Kolkata', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (122, 'Salt Lake', 'Kolkata', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (123, 'Howrah', 'Kolkata', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (124, 'Garia', 'Kolkata', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (125, 'Behala', 'Kolkata', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (126, 'Banjara Hills', 'Hyderabad', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (127, 'Secunderabad', 'Hyderabad', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (128, 'Gachibowli', 'Hyderabad', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (129, 'Kukatpally', 'Hyderabad', 'Y');
INSERT INTO branches (branch_id, branch_name, city, is_active) VALUES (130, 'Madhapur', 'Hyderabad', 'Y');
--customers
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1001, 'Anita Raman', DATE '1990-07-14', 'anita.raman@example.com', '900000001', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1002, 'Rahul Singh', DATE '1986-03-22', 'rahul.singh@example.com', '900000002', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1003, 'Priya Nair', DATE '1992-11-05', 'priya.nair@example.com', '900000003', 'PENDING');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1004, 'Arjun Mehta', DATE '1988-01-19', 'arjun.mehta@example.com', '900000004', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1005, 'Sneha Kapoor', DATE '1995-04-12', 'sneha.kapoor@example.com', '900000005', 'REJECTED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1006, 'Vikram Rao', DATE '1983-09-30', 'vikram.rao@example.com', '900000006', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1007, 'Meera Krishnan', DATE '1991-02-14', 'meera.krishnan@example.com', '900000007', 'PENDING');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1008, 'Karan Malhotra', DATE '1987-06-25', 'karan.malhotra@example.com', '900000008', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1009, 'Divya Sharma', DATE '1993-12-03', 'divya.sharma@example.com', '900000009', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1010, 'Rohit Verma', DATE '1985-08-17', 'rohit.verma@example.com', '900000010', 'PENDING');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1011, 'Neha Joshi', DATE '1994-05-21', 'neha.joshi@example.com', '900000011', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1012, 'Siddharth Iyer', DATE '1989-10-09', 'siddharth.iyer@example.com', '900000012', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1013, 'Aditi Kulkarni', DATE '1996-03-28', 'aditi.kulkarni@example.com', '900000013', 'PENDING');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1014, 'Manoj Patil', DATE '1982-07-11', 'manoj.patil@example.com', '900000014', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1015, 'Shreya Desai', DATE '1990-12-19', 'shreya.desai@example.com', '900000015', 'REJECTED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1016, 'Rajeev Menon', DATE '1984-04-07', 'rajeev.menon@example.com', '900000016', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1017, 'Pooja Reddy', DATE '1992-09-15', 'pooja.reddy@example.com', '900000017', 'PENDING');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1018, 'Aman Gupta', DATE '1987-01-23', 'aman.gupta@example.com', '900000018', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1019, 'Ritika Jain', DATE '1995-06-30', 'ritika.jain@example.com', '900000019', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1020, 'Suresh Kumar', DATE '1981-11-02', 'suresh.kumar@example.com', '900000020', 'PENDING');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1021, 'Anjali Mishra', DATE '1993-08-08', 'anjali.mishra@example.com', '900000021', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1022, 'Deepak Chawla', DATE '1986-12-27', 'deepak.chawla@example.com', '900000022', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1023, 'Kavita Bhat', DATE '1991-05-16', 'kavita.bhat@example.com', '900000023', 'PENDING');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1024, 'Nikhil Saxena', DATE '1988-09-04', 'nikhil.saxena@example.com', '900000024', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1025, 'Swati Agarwal', DATE '1994-02-20', 'swati.agarwal@example.com', '900000025', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1026, 'Harish Pillai', DATE '1983-07-29', 'harish.pillai@example.com', '900000026', 'PENDING');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1027, 'Renu Das', DATE '1990-10-13', 'renu.das@example.com', '900000027', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1028, 'Ashok Yadav', DATE '1985-03-06', 'ashok.yadav@example.com', '900000028', 'VERIFIED');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1029, 'Smita Roy', DATE '1992-12-25', 'smita.roy@example.com', '900000029', 'PENDING');
INSERT INTO customers (customer_id, full_name, dob, email, phone, kyc_status)
VALUES (1030, 'Gaurav Bhatt', DATE '1987-08-18', 'gaurav.bhatt@example.com', '900000030', 'VERIFIED');
--accounts
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2001, 1001, 101, 'SAVINGS', 'ACTIVE', 25000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2002, 1002, 102, 'CURRENT', 'ACTIVE', 100000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2003, 1003, 103, 'SAVINGS', 'ACTIVE', 15000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2004, 1004, 104, 'CURRENT', 'ACTIVE', 75000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2005, 1005, 105, 'SAVINGS', 'ACTIVE', 5000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2006, 1006, 106, 'CURRENT', 'ACTIVE', 120000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2007, 1007, 107, 'SAVINGS', 'ACTIVE', 18000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2008, 1008, 108, 'CURRENT', 'ACTIVE', 95000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2009, 1009, 109, 'SAVINGS', 'ACTIVE', 22000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2010, 1010, 110, 'CURRENT', 'ACTIVE', 88000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2011, 1011, 111, 'SAVINGS', 'ACTIVE', 30000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2012, 1012, 112, 'CURRENT', 'ACTIVE', 110000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2013, 1013, 113, 'SAVINGS', 'ACTIVE', 17000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2014, 1014, 114, 'CURRENT', 'ACTIVE', 93000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2015, 1015, 115, 'SAVINGS', 'ACTIVE', 8000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2016, 1016, 116, 'CURRENT', 'ACTIVE', 105000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2017, 1017, 117, 'SAVINGS', 'ACTIVE', 26000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2018, 1018, 118, 'CURRENT', 'ACTIVE', 97000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2019, 1019, 119, 'SAVINGS', 'ACTIVE', 21000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2020, 1020, 120, 'CURRENT', 'ACTIVE', 89000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2021, 1021, 121, 'SAVINGS', 'ACTIVE', 27000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2022, 1022, 122, 'CURRENT', 'ACTIVE', 102000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2023, 1023, 123, 'SAVINGS', 'ACTIVE', 19000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2024, 1024, 124, 'CURRENT', 'ACTIVE', 95000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2025, 1025, 125, 'SAVINGS', 'ACTIVE', 32000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2026, 1026, 126, 'CURRENT', 'ACTIVE', 87000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2027, 1027, 127, 'SAVINGS', 'ACTIVE', 24000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2028, 1028, 128, 'CURRENT', 'ACTIVE', 99000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2029, 1029, 129, 'SAVINGS', 'ACTIVE', 16000.00, SYSDATE);
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, status, balance, opened_at)
VALUES (2030, 1030, 130, 'CURRENT', 'ACTIVE', 108000.00, SYSDATE);
--transactions
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3001, 2001, 'DEPOSIT', 5000.00, 'INR', 'Salary credit');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3002, 2002, 'DEPOSIT', 20000.00, 'INR', 'Business income');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3003, 2003, 'DEPOSIT', 3000.00, 'INR', 'Cash deposit');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3004, 2004, 'DEPOSIT', 15000.00, 'INR', 'Cheque deposit');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3005, 2005, 'DEPOSIT', 2500.00, 'INR', 'Online transfer');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3006, 2006, 'WITHDRAW', 10000.00, 'INR', 'ATM withdrawal');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3007, 2007, 'WITHDRAW', 5000.00, 'INR', 'Bill payment');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3008, 2008, 'WITHDRAW', 12000.00, 'INR', 'Cash withdrawal');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3009, 2009, 'WITHDRAW', 4000.00, 'INR', 'Shopping expense');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3010, 2010, 'WITHDRAW', 8000.00, 'INR', 'Utility bill');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, ref_txn_id, notes)
VALUES (3011, 2011, 'TRANSFER_OUT', 7000.00, 'INR', 3012, 'Rent payment');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, ref_txn_id, notes)
VALUES (3012, 2012, 'TRANSFER_IN', 7000.00, 'INR', 3011, 'Rent received');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, ref_txn_id, notes)
VALUES (3013, 2013, 'TRANSFER_OUT', 4500.00, 'INR', 3014, 'Gift transfer');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, ref_txn_id, notes)
VALUES (3014, 2014, 'TRANSFER_IN', 4500.00, 'INR', 3013, 'Gift received');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, ref_txn_id, notes)
VALUES (3015, 2015, 'TRANSFER_OUT', 6000.00, 'INR', 3016, 'Loan repayment');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, ref_txn_id, notes)
VALUES (3016, 2016, 'TRANSFER_IN', 6000.00, 'INR', 3015, 'Loan repayment received');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3017, 2017, 'DEPOSIT', 9000.00, 'INR', 'Salary credit');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3018, 2018, 'DEPOSIT', 22000.00, 'INR', 'Business income');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3019, 2019, 'DEPOSIT', 3500.00, 'INR', 'Cash deposit');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3020, 2020, 'DEPOSIT', 18000.00, 'INR', 'Cheque deposit');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3021, 2021, 'WITHDRAW', 6000.00, 'INR', 'ATM withdrawal');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3022, 2022, 'WITHDRAW', 3000.00, 'INR', 'Bill payment');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3023, 2023, 'WITHDRAW', 10000.00, 'INR', 'Cash withdrawal');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3024, 2024, 'WITHDRAW', 4500.00, 'INR', 'Shopping expense');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, notes)
VALUES (3025, 2025, 'WITHDRAW', 7000.00, 'INR', 'Utility bill');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, ref_txn_id, notes)
VALUES (3026, 2026, 'TRANSFER_OUT', 8000.00, 'INR', 3027, 'Family support');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, ref_txn_id, notes)
VALUES (3027, 2027, 'TRANSFER_IN', 8000.00, 'INR', 3026, 'Family support received');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, ref_txn_id, notes)
VALUES (3028, 2028, 'TRANSFER_OUT', 5500.00, 'INR', 3029, 'Gift transfer');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, ref_txn_id, notes)
VALUES (3029, 2029, 'TRANSFER_IN', 5500.00, 'INR', 3028, 'Gift received');
INSERT INTO transactions (txn_id, account_id, txn_type, amount, currency, ref_txn_id, notes)
VALUES (3030, 2030, 'TRANSFER_OUT', 12000.00, 'INR', NULL, 'Vendor payment');
--loans
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4001, 1001, 250000.00, 0.0850, 60, DATE '2022-01-15', 'ACTIVE', 230000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4002, 1002, 500000.00, 0.1050, 120, DATE '2021-06-10', 'ACTIVE', 480000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4003, 1003, 150000.00, 0.0950, 36, DATE '2023-03-01', 'ACTIVE', 140000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4004, 1004, 300000.00, 0.1100, 48, DATE '2020-11-20', 'CLOSED', 0.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4005, 1005, 200000.00, 0.1200, 60, DATE '2022-07-05', 'DEFAULT', 180000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4006, 1006, 100000.00, 0.0800, 24, DATE '2023-02-10', 'ACTIVE', 95000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4007, 1007, 350000.00, 0.0900, 72, DATE '2021-09-15', 'ACTIVE', 320000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4008, 1008, 450000.00, 0.1000, 96, DATE '2020-05-12', 'CLOSED', 0.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4009, 1009, 120000.00, 0.0850, 36, DATE '2023-04-01', 'ACTIVE', 115000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4010, 1010, 600000.00, 0.1250, 120, DATE '2019-08-20', 'DEFAULT', 550000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4011, 1011, 180000.00, 0.0950, 48, DATE '2022-12-01', 'ACTIVE', 170000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4012, 1012, 220000.00, 0.0900, 60, DATE '2021-03-15', 'ACTIVE', 200000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4013, 1013, 140000.00, 0.0850, 36, DATE '2023-06-10', 'ACTIVE', 135000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4014, 1014, 500000.00, 0.1100, 84, DATE '2020-10-05', 'CLOSED', 0.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4015, 1015, 160000.00, 0.0950, 48, DATE '2022-05-01', 'DEFAULT', 150000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4016, 1016, 280000.00, 0.1000, 60, DATE '2021-07-12', 'ACTIVE', 260000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4017, 1017, 320000.00, 0.1050, 72, DATE '2020-09-18', 'ACTIVE', 300000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4018, 1018, 400000.00, 0.1150, 96, DATE '2019-12-25', 'DEFAULT', 370000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4019, 1019, 130000.00, 0.0850, 36, DATE '2023-01-10', 'ACTIVE', 125000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4020, 1020, 220000.00, 0.0950, 60, DATE '2021-11-05', 'ACTIVE', 210000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4021, 1021, 260000.00, 0.1000, 72, DATE '2020-06-15', 'ACTIVE', 240000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4022, 1022, 300000.00, 0.1100, 84, DATE '2019-09-01', 'CLOSED', 0.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4023, 1023, 170000.00, 0.0900, 48, DATE '2022-04-20', 'ACTIVE', 160000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4024, 1024, 350000.00, 0.1050, 72, DATE '2020-02-12', 'DEFAULT', 330000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4025, 1025, 200000.00, 0.0950, 60, DATE '2021-08-30', 'ACTIVE', 190000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4026, 1026, 150000.00, 0.0850, 36, DATE '2023-05-01', 'ACTIVE', 145000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4027, 1027, 280000.00, 0.1000, 60, DATE '2021-12-15', 'ACTIVE', 270000.00);
INSERT INTO loans (loan_id, customer_id, principal, interest_rate, term_months, start_date, status, balance_outstanding)
VALUES (4028, 1028, 400000.00, 0.1150, 96, DATE '2020-07-07', 'DEFAULT', 380000.00);
--fraud alerts
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5001, 3001, 'AMOUNT_THRESHOLD', 'HIGH', 'Deposit exceeds threshold limit');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5002, 3002, 'BURST_ACTIVITY', 'MEDIUM', 'Multiple deposits in short time');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5003, 3003, 'SUSPICIOUS_PATTERN', 'LOW', 'Unusual cash deposit frequency');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5004, 3004, 'AMOUNT_THRESHOLD', 'HIGH', 'Cheque deposit unusually large');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5005, 3005, 'BURST_ACTIVITY', 'MEDIUM', 'Rapid online transfers detected');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5006, 3006, 'AMOUNT_THRESHOLD', 'HIGH', 'ATM withdrawal exceeds daily limit');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5007, 3007, 'SUSPICIOUS_PATTERN', 'LOW', 'Bill payment flagged as irregular');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5008, 3008, 'BURST_ACTIVITY', 'MEDIUM', 'Multiple withdrawals in one hour');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5009, 3009, 'AMOUNT_THRESHOLD', 'HIGH', 'Shopping expense unusually high');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5010, 3010, 'SUSPICIOUS_PATTERN', 'LOW', 'Utility bill payment flagged');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5011, 3011, 'AMOUNT_THRESHOLD', 'HIGH', 'Transfer out exceeds safe limit');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5012, 3012, 'TRANSFER_PAIR_CHECK', 'LOW', 'Transfer in without proper reference');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5013, 3013, 'BURST_ACTIVITY', 'MEDIUM', 'Multiple transfers in short span');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5014, 3014, 'SUSPICIOUS_PATTERN', 'LOW', 'Gift transfer flagged');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5015, 3015, 'AMOUNT_THRESHOLD', 'HIGH', 'Loan repayment unusually large');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5016, 3016, 'TRANSFER_PAIR_CHECK', 'LOW', 'Loan repayment pair mismatch');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5017, 3017, 'BURST_ACTIVITY', 'MEDIUM', 'Salary credits too frequent');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5018, 3018, 'AMOUNT_THRESHOLD', 'HIGH', 'Business income exceeds threshold');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5019, 3019, 'SUSPICIOUS_PATTERN', 'LOW', 'Cash deposit flagged');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5020, 3020, 'BURST_ACTIVITY', 'MEDIUM', 'Cheque deposits clustered together');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5021, 3021, 'AMOUNT_THRESHOLD', 'HIGH', 'ATM withdrawal exceeds safe limit');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5022, 3022, 'SUSPICIOUS_PATTERN', 'LOW', 'Bill payment irregularity');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5023, 3023, 'BURST_ACTIVITY', 'MEDIUM', 'Cash withdrawals clustered');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5024, 3024, 'AMOUNT_THRESHOLD', 'HIGH', 'Shopping expense exceeds limit');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5025, 3025, 'SUSPICIOUS_PATTERN', 'LOW', 'Utility bill flagged');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5026, 3026, 'AMOUNT_THRESHOLD', 'HIGH', 'Family support transfer large');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5027, 3027, 'TRANSFER_PAIR_CHECK', 'LOW', 'Family support pair mismatch');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5028, 3028, 'BURST_ACTIVITY', 'MEDIUM', 'Gift transfers clustered');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5029, 3029, 'SUSPICIOUS_PATTERN', 'LOW', 'Gift received flagged');
INSERT INTO fraud_alerts (alert_id, txn_id, alert_code, severity, description)
VALUES (5030, 3030, 'AMOUNT_THRESHOLD', 'HIGH', 'Vendor payment exceeds threshold');



