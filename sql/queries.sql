-- (Aggregation) Find the amount of accounts associated with each branch. List them in descending order and display total balance across all accounts
SELECT branches.branchname,
COUNT(*) AS accounts,
SUM(accounts.balance) AS balance_sum
FROM Accounts
JOIN branches on accounts.branchid = branches.branchid
GROUP BY
branches.branchname
ORDER BY 
accounts DESC;


-- (Aggregation, Subquery) Find branches that have average balances higher than the average branch of overall accounts
SELECT branches.branchname,
AVG(balance) AS average_balance
FROM Accounts
JOIN branches on accounts.branchid = branches.branchid
WHERE 
accounts.balance > (SELECT AVG(accounts.balance) FROM accounts)
GROUP BY
branches.branchname
ORDER BY 
average_balance DESC;


-- (Aggregation, Subquery) We want to find the average salary of tellers at each branch (including branches with no tellers), ordered from highest to lowest.
SELECT
        b.BranchName,
        ROUND(AVG(ts.Salary),2) AS av
FROM Branches AS b LEFT JOIN (
        SELECT 
                e.EmployeeID,
                e.BranchID,
                e.Salary
        FROM Employees AS e JOIN Tellers AS t
                ON e.EmployeeID = t.EmployeeID
        ) AS ts ON b.BranchID = ts.BranchID
GROUP BY b.BranchName
ORDER BY av DESC NULLS LAST;


-- We want to find the names of Managers born before the year 1964, ordered by their DOB in descending order.
SELECT
        FirstName,
        LastName,
        DOB
FROM Employees AS e JOIN Managers AS m 
        ON e.EmployeeID = m.EmployeeID
WHERE DOB < '1964-01-01'
ORDER BY DOB DESC;


-- (Subquery) Get total withdrawals from ATMs that have been used this year
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
)
ORDER BY TotalWithdrawals DESC;


-- (Aggregation) Get Addresses with no ATM installed, just a Bank
SELECT Branches.Address
FROM Branches
LEFT JOIN ATM ON ATM.BranchID = Branches.BranchID
GROUP BY Branches.Address
HAVING COUNT(ATM.BranchID) = 0;


-- (Aggregation) Get the monthly transaction count and total amount for each branch
SELECT
        B.BranchID,
        B.BranchName,
        date_trunc('month', T.TransactionDate)::DATE AS Month,
        COUNT(T.TransactionID) AS TransactionCount,
        SUM(T.Amount) AS TotalTransactionAmount
FROM
        Transactions T
JOIN
        Branches B ON T.BranchID = B.BranchID
GROUP BY
        B.BranchID, Month
ORDER BY
        Month, B.BranchID;


-- (3+, Aggregation) Get the remaining balance left on each loan, along with associated customer info, and list them in descending order
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


-- (Subquery) Find customers with more than one account
SELECT
C.FirstName,
C.LastName,
COUNT(o.AccountID) AS NumberOfAccounts
FROM Customers C
JOIN 
Owns O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID
HAVING COUNT(O.AccountID) > 1;


-- (3+) Get customers with account balances and account types
SELECT 
C.FirstName,
C.LastName, 
A.AccountType, 
A.Balance
FROM Customers C
JOIN
Owns O ON C.CustomerID = O.CustomerID
JOIN
Accounts A ON O.AccountID = A.AccountID;