-- get total withdrawals from ATMs since the start of the year.
CREATE VIEW TotalATMWithdrawals AS
SELECT Branches.BranchName, Branches.Address, (
SELECT SUM(Transactions.Amount)
FROM Transactions
WHERE Transactions.BranchID = Branches.BranchID
AND Transactions.TransactionType = 'Withdrawal'
AND Transactions.TransactionDate >= '2024-01-01'
) AS TotalWithdrawals
FROM Branches
JOIN ATM ON Branches.BranchID = ATM.BranchID
WHERE ATM.BranchID IN (
SELECT DISTINCT Transactions.BranchID
FROM Transactions
WHERE Transactions.TransactionType = 'Withdrawal'
AND Transactions.TransactionDate >= '2024-01-01'
AND Transactions.Amount > 500
);


-- List each branch and find the amount of accounts associated with each. List them in descending order and display total balance across all accounts.


CREATE VIEW BranchAccountBalance AS 
SELECT branches.branchname,
COUNT(*) AS accounts,
SUM(accounts.balance) AS balance_sum
FROM Accounts
JOIN branches on accounts.branchid = branches.branchid
GROUP BY
branches.branchname
ORDER BY 
accounts DESC;


--A limited View of Branches for getting an idea of number of employees across branches
--Updateable since no multiple tables, no grouping, and no functions
CREATE OR REPLACE VIEW LimitedBranchView AS 
SELECT BranchID, BranchName, EmployeeCount
FROM Branches
WHERE EmployeeCount > 1;


--List a summary of customer loan information in descending order by remaining balance
CREATE VIEW CustomerLoansSummary AS
SELECT
        C.FirstName,
            C.LastName,
        C.SSN,
            L.AccountID,
            L.Balance,
            SUM(LP.PrincipalAmount + LP.InterestAmount) AS TotalLoanPayment,
            (SUM(LP.PrincipalAmount + LP.InterestAmount) + L.Balance) AS RemainingBalance
FROM 
            LoanPayments LP
JOIN 
            Loans L ON LP.TransactionID = L.AccountID
JOIN 
            Owns O ON L.AccountID = O.AccountID
JOIN 
            Customers C ON O.CustomerID = C.CustomerID
GROUP BY 
            L.AccountID, L.Balance, C.FirstName, C.LastName, C.SSN
ORDER BY 
            RemainingBalance DESC;