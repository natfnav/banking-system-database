UPDATE Branches
SET CashOnHand = 99999.99
WHERE BranchID = 1;


UPDATE Branches
SET CashOnHand = 3423.00, BranchName = 'Pine Centerville', EmployeeCount = 15
WHERE BranchID = 13;


UPDATE Branches
SET CashOnHand = 56642.99, BranchName = 'Circle Springfield', Address = '800 Circle Sqr, Springfield, IL', EmployeeCount = 27
WHERE BranchID = 18;


UPDATE Branches
SET BranchName = 'Birch Mayfield', Address = '732 Birch Rd, Mayfield, IL', EmployeeCount = 5
WHERE BranchID = 15;


UPDATE ATM
SET MachineType = 'B', InstallDate = '2024-02-01'
WHERE BranchID = 1;


UPDATE ATM
SET MachineType = 'C', InstallDate = '2024-02-01', LastMaintenance = '2024-02-02'
WHERE BranchID = 2;


UPDATE ATM
SET MachineType = 'A', InstallDate = '2024-02-01', LastMaintenance = '2024-02-02', WithdrawalLimit = 69420.00
WHERE BranchID = 5;


UPDATE ATM
SET InstallDate = '2024-02-01', LastMaintenance = '2024-02-02', WithdrawalLimit = 999.00
WHERE BranchID = 10;


UPDATE Employees
SET LastName = 'Lichess'
WHERE EmployeeID = 9002;


UPDATE Employees
SET Salary = 105000
WHERE EmployeeID = 9016;


UPDATE Employees
SET ManagerID = 9001, BranchID = 11
WHERE EmployeeID = 9020;


UPDATE Employees
SET BranchID = 13
WHERE EmployeeID = 9013;


UPDATE Managers
SET AuditDate = '2024-01-04'
WHERE EmployeeID = 9005;


UPDATE Managers
SET OfficeRoom = NULL
WHERE EmployeeID = 9007;


UPDATE Managers
SET AuditDate = '2024-10-09'
WHERE EmployeeID = 9006;


UPDATE Managers
SET AuditDate = '2024-11-22'
WHERE EmployeeID = 9008;


UPDATE Tellers
SET NotaryID = 111222
WHERE EmployeeID = 9013;


UPDATE Tellers
SET PerformanceReview = FALSE
WHERE EmployeeID = 9020;


UPDATE Tellers
SET PerformanceReview = TRUE
WHERE EmployeeID = 9014;


UPDATE Tellers
SET LockerID = NULL
WHERE EmployeeID = 9016;


UPDATE Accounts
SET balance = 2609
WHERE accountid = 1;


UPDATE Accounts
SET balance = 4109
WHERE accountid = 4;


UPDATE Accounts
SET branchid = 4
WHERE accountid = 1;


UPDATE Accounts
SET branchid = 4
WHERE accountid = 4;


UPDATE Cards
SET expirationdate = '2029-03-27'
WHERE accountid = 1;


UPDATE Cards
SET expirationdate = '2029-07-19'
WHERE accountid = 2;


UPDATE Cards
SET verifycode = 505
WHERE accountid = 1;


UPDATE Cards
SET verifycode = 265
WHERE accountid = 2;


UPDATE Loans
SET balance = -38000
WHERE accountid = 13;


UPDATE Loans
SET balance = -1500
WHERE accountid = 11;


UPDATE Loans
set schedule = 'Biweekly'
WHERE accountid = 13;


UPDATE Loans
set schedule = 'Biweekly'
WHERE accountid = 11;


UPDATE Customers
SET FirstName = 'Michael', LastName = 'Smith'
WHERE CustomerID = 101;


UPDATE Customers
SET Address = '123 Maple St, Springfield, IL', DateOfBirth = '1985-06-15'
WHERE CustomerID = 102;


UPDATE Customers
SET SSN = '321-45-6789', Address = '456 Oak Ave, Lincoln, IL'
WHERE CustomerID = 103;


UPDATE Customers
SET LastName = 'Johnson', DateOfBirth = '1990-02-20'
WHERE CustomerID = 104;


UPDATE Owns
SET AccountID = 18
WHERE CustomerID = 101 AND AccountID = 1;


UPDATE Owns
SET CustomerID = 102
WHERE CustomerID = 101 AND AccountID = 3;


UPDATE Owns
SET AccountID = 19
WHERE CustomerID = 102 AND AccountID = 2;


UPDATE Owns
SET CustomerID = 103
WHERE CustomerID = 102 AND AccountID = 5;


UPDATE Transactions
SET Amount = 500.00
WHERE TransactionID = 2;


UPDATE Transactions
SET Amount = Amount + 100.00
WHERE AccountID = 1 AND TransactionType =  'Deposit';


UPDATE Transactions
SET Amount = Amount * 2.00
WHERE BranchID = 1 AND AccountID < 11;


UPDATE Transactions
SET Amount = 5000.00
WHERE TransactionType = 'Withdrawal' AND Amount > 5000.00;


UPDATE LoanPayments
SET PrincipalAmount = PrincipalAmount + Fees
WHERE TransactionID = 14;


UPDATE LoanPayments
SET Fees = 0.00
WHERE TransactionID = 14;


UPDATE LoanPayments
SET Fees = Fees * 1.20
WHERE Late = TRUE AND PrincipalAmount > 1000.00;


UPDATE LoanPayments 
SET InterestAmount = InterestAmount - (InterestAmount * 0.10) 
WHERE Late = FALSE AND InterestAmount > 25.00;