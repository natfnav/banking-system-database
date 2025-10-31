-- Integrity
INSERT INTO Branches (BranchID, CashOnHand, BranchName, Address, EmployeeCount) VALUES
(1, 30000.00, 'Dupe', 'Dupe', 10);


-- Check
UPDATE Cards
SET expirationdate = '2023-06-27'
WHERE accountid = 1;


UPDATE Loans
SET balance = 100
WHERE accountid = 11;


UPDATE Loans
SET interestrate = -10.00
WHERE accountid = 11;


UPDATE Transactions
SET Amount = 500000.00
WHERE TransactionID = 15;


-- Referential
INSERT INTO ATM (BranchID, MachineType, InstallDate, LastMaintenance, WithdrawalLimit) VALUES
(99, 'BadFK', '1990-01-01', '1990-01-01', 5000.00);


INSERT INTO Owns (CustomerID, AccountID)
VALUES (999, 1);


INSERT INTO Owns (CustomerID, AccountID)
VALUES (101, 999);


-- Not Null
INSERT INTO Branches (BranchID, CashOnHand, BranchName, Address, EmployeeCount) VALUES
(NULL, 25000.00, 'Error', 'Error', 10);


INSERT INTO Customers (CustomerID, FirstName, LastName, DateOfBirth, SSN, Address)
VALUES (111, NULL, 'NullName', '1990-01-01', '111-22-3333', '789 Willow St, Lincoln, IL');


INSERT INTO LoanPayments (TransactionID, Late, Fees, InterestAmount, PrincipalAmount)
VALUES
(1, FALSE, 100.00, 29.32, NULL);