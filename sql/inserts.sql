INSERT INTO Branches (BranchID, CashOnHand, BranchName, Address, EmployeeCount) VALUES
(1, 23438.00, 'ATM1', '754 Coconut Square, Springfield, IL', 1),
(2, 22132.00, 'ATM2', '867 Tree St, Lincoln, IL', 1),
(3, 53421.00, 'ATM3', '888 Oak St, Franklin, IL', 1),
(4, 11111.00, 'ATM4', '902 Pine Blvd, Centerville, IL', 1),
(5, 42069.00, 'ATM', '444 Elm St, Franklin, IL', 1),
(6, 69420.00, 'ATM6', '453 Square Cir, Yorktown, IL', 1),
(7, 1412.00, 'ATM7', '221 Baker Street, Centerville, IL', 1),
(8, 10.00, 'ATM8', '184 Circle Sqr, Springfield, IL', 1),
(9, 999.99, 'ATM9', '639 Park Alley, Mayfield, IL', 1),
(10, 0.01, 'ATM10', '724 Spruce Street, Franklin, IL', 1),
(11, 23235.00, 'Coconut', '754 Coconut Square, Springfield, IL', 10),
(12, 25657.00, 'Oak', '888 Oak St, Franklin, IL', 17),
(13, 7745.00, 'Pine', '902 Pine Blvd, Centerville, IL', 8),
(14, 999.00, 'Square', '453 Square Cir, Yorktown, IL', 12),
(15, 12364.00, 'Birch', '832 Birch Rd, Mayfield, IL', 16),
(16, 89087.00, 'Baker', '221 Baker Street, Centerville, IL', 24),
(17, 76543.00, 'Log', '953 Log St, Lincoln, IL', 10),
(18, 9765.00, 'Circle', '184 Circle Sqr, Springfield, IL', 14),
(19, 1234.00, 'Gigantic', '999 Gigantic Ln, Centerville, IL', 4),
(20, 2341.00, 'Spruce', '724 Spruce Street, Franklin, IL', 20);




INSERT INTO ATM (BranchID, MachineType, InstallDate, LastMaintenance, WithdrawalLimit) VALUES
(1, 'A', '2018-01-24', '2024-01-24', 5000.00),
(2, 'B', '2018-10-01', '2024-10-27', 4231.00),
(3, 'B', '2019-07-03', '2024-10-04', 1000.00),
(4, 'A', '2020-01-15', '2024-09-08', 10.00),
(5, 'C', '2020-09-12', '2024-07-13', 690.00),
(6, 'B', '2021-08-08', '2024-06-15', 420.00),
(7, 'A', '2021-12-17', '2024-04-04', 11111.00),
(8, 'A', '2022-01-16', '2024-10-14', 999.00),
(9, 'B', '2023-03-18', '2023-11-11', 86.00),
(10, 'C', '2024-01-12', '2023-12-28', 2372.00);


INSERT INTO Employees (EmployeeID, FirstName, LastName, DOB, Salary, BranchID, ManagerID) VALUES
(9001, 'John', 'Smith', '1964-03-09', 1947899.01, 11, 9001),
(9002, 'Jane', 'Doe', '1972-08-21', 1839123, 12, 9002),
(9003, 'Michael', 'Angelo', '1991-11-11', 449000.99, 13, 9001),
(9004, 'Devon', 'Smith', '2001-01-04', 204800.50, 14, 9001),
(9005, 'Janice', 'Smith', '2003-12-03', 105000, 15, 9001),
(9006, 'Maurice', 'Stevens', '1993-07-25', 431000, 16, 9001),
(9007, 'Seth', 'Sanford', '1960-08-02', 256000, 17, 9002),
(9008, 'Randall', 'Gamble', '1973-03-21', 128000, 18, 9002),
(9009, 'Christie', 'Leonard', '1952-02-23', 158000, 19, 9002),
(9010, 'Robbie', 'Holland', '1998-07-11', 254392, 20, 9002),
(9011, 'Herman', 'Best', '1951-03-16', 179000, 11, 9003),
(9012, 'Elaine', 'Vazquez', '1969-10-22', 46285, 11, 9004),
(9013, 'Phillip', 'Pike', '1987-11-24', 50000, 11, 9004),
(9014, 'Jackie', 'Michael', '1966-12-04', 142000, 14, 9005),
(9015, 'Tina', 'Cook', '1990-07-06', 70000, 14, 9006),
(9016, 'Vivian', 'Chaney', '1958-03-14', 95000, 15, 9009),
(9017, 'Alan', 'Cornell', '1973-06-03', 103039, 16, 9010),
(9018, 'Karla', 'Levy', '1993-01-08', 113000, 19, 9010),
(9019, 'Rachel', 'Fay', '1964-09-20', 80500, 19, 9010),
(9020, 'Della', 'Frost', '1996-09-07', 143000, 19, 9010);


INSERT INTO Managers (EmployeeID, Title, AuditDate, OfficeRoom, Certification, BranchID) VALUES
(9001, 'Head Manager', '1990-04-24', 'Giant Room', 'Degree from Cornell', 11),
(9002, 'Head Manager', '2003-09-10', 'Titan Room', 'Degree from Harvard', 12),
(9003, 'Manager', NULL, NULL, 'Degree from Browns, CPA Certification', 13),
(9004, 'Manager', '2024-11-23', 'D001', 'CPA Certification', 14),
(9005, 'Manager', NULL, '101', 'Degree from USF', 15),
(9006, 'Manager', '2022-06-12', NULL, 'CPA Certification', 16),
(9007, 'Manager', '2024-05-09', '321', 'CPA Certification', 17),
(9008, 'Manager', '2023-03-21', '019', 'Degree from USF', 18),
(9009, 'Manager', '2023-09-04', 'Reptile 9', 'Degree from UF', 19),
(9010, 'Manager', '2024-04-12', 'H40', NULL, 20);


INSERT INTO Tellers (EmployeeID, NotaryID, LockerID, PerformanceReview) VALUES
(9011, 516932, 3, FALSE),
(9012, 316351, 2, FALSE),
(9013, NULL, 10, NULL),
(9014, NULL, 9, FALSE),
(9015, 894562, NULL, FALSE),
(9016, NULL, 2, FALSE),
(9017, 891149, 4, FALSE),
(9018, 549844, 6, TRUE),
(9019, NULL, 3, NULL),
(9020, NULL, NULL, TRUE);


INSERT INTO accounts (accountid, accountopened, accounttype, balance, branchid)
VALUES
(1, '2003-03-08', 'Checkings', 812, 3),
(2, '2004-05-26', 'Checkings', 627, 1),
(3, '2005-02-07', 'Savings', 3515, 9),
(4, '2011-12-10', 'Checkings', 7940, 6),
(5, '2012-06-26', 'Savings', 2695, 9),
(6, '2013-03-13', 'Savings', 4421, 9),
(7, '2013-11-25', 'Checkings', 4643, 10),
(8, '2014-06-17', 'Savings', 8054, 6),
(9, '2021-03-10', 'Checkings', 5607, 1),
(10, '2023-05-27', 'Savings', 7939, 2),
(11, '2002-01-06', 'Checkings', 7788, 3),
(12, '2002-08-27', 'Checkings', 4723, 5),
(13, '2003-04-06', 'Checkings', 6153, 5),
(14, '2003-04-08', 'Savings', 5894, 9),
(15, '2010-11-21', 'Savings', 4247, 7),
(16, '2014-07-05', 'Savings', 7955, 2),
(17, '2017-12-19', 'Savings', 6529, 6),
(18, '2019-06-15', 'Savings', 4866, 6),
(19, '2021-08-01', 'Checkings', 2401, 5),
(20, '2024-05-22', 'Checkings', 9210, 2);


INSERT INTO cards (accountid, cardnumber, expirationdate, pin, verifycode)
VALUES
(1, 5579747144710460, '2025-03-27', 1992, 338),
(2, 5136377095750582, '2025-07-19', 6830, 620),
(3, 5244338730785671, '2025-10-19', 3426, 881),
(4, 5563565345933998, '2026-04-27', 5986, 507),
(5, 5360972004985241, '2026-11-10', 4002, 338),
(6, 5136379118345416, '2027-02-24', 1738, 131),
(7, 5360977761784521, '2027-03-02', 9154, 837),
(8, 5595775907757642, '2027-04-04', 6940, 717),
(9, 5244338837959302, '2027-07-06', 6240, 278),
(10, 5166493880984790, '2028-02-15', 8333, 434);


INSERT INTO loans (accountid, interestrate, loanterm, collateral, schedule, balance)
VALUES
(11, 34.01, '2026-03-26', 'Vehicles', 'Monthly', -2000),
(12, 18.62, '2026-10-06', 'Accounts', 'Monthly', -12000),
(13, 32.96, '2027-04-01', 'Investments', 'Monthly', -40000),
(14, 34.01, '2031-05-20', 'Vehicles', 'Biweekly', -26000),
(15, 35.97, '2027-12-27', 'Real Estate', 'Biweekly', -21000),
(16, 24.62, '2028-09-27', 'Vehicles', 'Monthly', -3000),
(17, 22.45, '2030-01-03', 'Vehicles', 'Biweekly', -25000),
(18, 22.53, '2030-05-09', 'Accounts', 'Biweekly', -8000),
(19, 12.63, '2030-12-04', 'Accounts', 'Monthly', -28000),
(20, 22.08, '2031-01-22', 'Vehicles', 'Biweekly', -28000);


INSERT INTO Transactions (TransactionID, TransactionDate, Amount, TransactionType, AccountID, BranchID, EmployeeID)
VALUES
(1, '2024-08-27', 15400.00, 'Deposit', 8, 4, 9004),
(2, '2025-12-15', 300.00, 'Withdrawal', 9, 7, 9007),
(3, '2027-04-23', 2032.96, 'Repayment', 13, 1, 9001),
(4, '2026-04-28', 584.01, 'Repayment', 11, 2, 9002),
(5, '2026-12-27', 2200.00, 'Withdrawal', 7, 9, 9009),
(6, '2027-02-06', 418.62, 'Repayment', 12, 10, 9010),
(7, '2027-01-31', 118.22, 'Deposit', 3, 1, 9020),
(8, '2028-01-03', 10.00, 'Deposit', 1, 7, 9007),
(9, '2030-04-16', 15200.00, 'Withdrawal', 2, 3, 9003),
(10, '2031-06-14', 4960.01, 'Repayment', 14, 4, 9004),
(11, '2027-12-16', 543.97, 'Repayment', 15, 10, 9010),
(12, '2028-12-27', 124.62, 'Repayment', 16, 5, 9005),
(13, '2022-01-10', 572.45, 'Repayment', 17, 2, 9002),
(14, '2030-05-31', 152.53, 'Repayment', 18, 2, 9002),
(15, '2025-10-30', 400.00, 'Deposit', 4, 10, 9010),
(16, '2031-04-04', 2612.63, 'Repayment', 19, 10, 9010),
(17, '2028-10-10', 2000.00, 'Deposit', 6, 1, 9011),
(18, '2030-07-31', 1020.36, 'Deposit', 9, 1, 9016),
(19, '2025-12-21', 1300.00, 'Withdrawal', 9, 1, 9014),
(20, '2031-01-23', 26000.00, 'Repayment', 20, 2, 9002),
(21, '2030-04-22', 600.00, 'Withdrawal', 2, 3, 9003);


INSERT INTO LoanPayments (TransactionID, Late, Fees, InterestAmount, PrincipalAmount)
VALUES
(4, TRUE, 50.00, 34.01, 500.00),
(3, FALSE, 0.00, 32.96, 2000.00),
(6, FALSE, 0.00, 18.62, 400.00),
(10, TRUE, 426.00, 34.01, 4500.00),
(11, FALSE, 8.00, 35.97, 500.00),
(12, FALSE, 0.00, 24.62, 100.00),
(13, TRUE, 50.00, 22.45, 500.00),
(14, TRUE, 50.00, 22.53, 80.00),
(16, FALSE, 100.00, 12.63, 2500.00),
(20, FALSE, 0.00, 0.00, 26000.00);


INSERT INTO Customers (CustomerID, FirstName, LastName, DateOfBirth, SSN, Address)
VALUES
(101, 'Alice', 'Johnson', '1988-02-15', '123-45-6789', '456 Oak St, Springfield, IL'),
(102, 'Bob', 'Smith', '1975-07-30', '987-65-4321', '789 Pine Ave, Lincoln, IL'),
(103, 'Charlie', 'Brown', '1990-11-12', '567-89-0123', '123 Maple Dr, Centerville, IL'),
(104, 'Diana', 'Prince', '1982-03-22', '345-67-8901', '321 Elm St, Franklin, IL'),
(105, 'Edward', 'Kenway', '1993-09-18', '456-78-9012', '654 Cedar St, Yorktown, IL'),
(106, 'Fiona', 'Gallagher', '1985-04-05', '789-01-2345', '234 Oak Grove, Mayfield, IL'),
(107, 'George', 'Harrison', '1981-01-11', '234-56-7890', '312 Oak Dr, Springfield, IL'),
(108, 'Helen', 'Mirren', '1995-08-25', '654-32-1987', '123 Walnut Ave, Lincoln, IL'),
(109, 'Irene', 'Adler', '1979-05-29', '543-21-0987', '432 Pine Blvd, Centerville, IL'),
(110, 'Jack', 'Reacher', '1986-12-14', '345-67-1234', '890 Spruce St, Franklin, IL');


INSERT INTO Owns (CustomerID, AccountID)
VALUES
(101, 1),
(101, 2),
(102, 3),
(102, 4),
(103, 5),
(104, 6),
(105, 7),
(106, 8),
(107, 9),
(108, 10),
(109, 11),
(110, 12),
(101, 13),
(102, 14),
(103, 15),
(104, 16),
(105, 17),
(106, 18),
(107, 19),
(108, 20);