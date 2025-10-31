CREATE TABLE Customers (
        CustomerID SERIAL PRIMARY KEY,
        FirstName VARCHAR(50) NOT NULL,
        LastName VARCHAR(50) NOT NULL,
        DateOfBirth DATE NOT NULL,
        Address TEXT NOT NULL,
        SSN CHAR(11) NOT NULL UNIQUE
);


CREATE TABLE Branches (
        BranchID INT PRIMARY KEY,
        CashOnHand DECIMAL(12,2) DEFAULT 0.00,
        BranchName VARCHAR(100),
        Address VARCHAR(100),
        EmployeeCount INT
);


CREATE TABLE Employees (
        EmployeeID INT PRIMARY KEY,
        FirstName VARCHAR(100) NOT NULL,
        LastName VARCHAR(100) NOT NULL,
        DOB DATE NOT NULL,
        Salary DECIMAL(9,2) DEFAULT 0.00 NOT NULL,
        BranchID INT,
        ManagerID INT NOT NULL,
        FOREIGN KEY (BranchID) REFERENCES Branches,
        FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);


CREATE TABLE Managers (
        EmployeeID INT PRIMARY KEY,
        Title VARCHAR(100) NOT NULL,
        AuditDate DATE,
        OfficeRoom VARCHAR(100),
        Certification VARCHAR(100),
        BranchID INT NOT NULL,
        FOREIGN KEY (EmployeeID) REFERENCES Employees ON DELETE CASCADE,
        FOREIGN KEY (BranchID) REFERENCES Branches
);


CREATE TABLE Tellers (
        EmployeeID INT PRIMARY KEY,
        NotaryID INT,
        LockerID SMALLINT,
        WindowNumber SMALLINT,
        PerformanceReview BOOLEAN,
        FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID) ON DELETE CASCADE
);


CREATE TABLE Accounts (
        AccountID INT PRIMARY KEY,
        AccountOpened DATE,
        AccountType VARCHAR(100),
        Balance DECIMAL(9,2) DEFAULT 0.00,
        BranchID INT NOT NULL,
        CONSTRAINT Belongs FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);


CREATE TABLE Owns (
        CustomerID INT,
        AccountID INT,
        PRIMARY KEY (CustomerID, AccountID),
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE,
        FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) ON DELETE CASCADE
);


CREATE TABLE Cards (
        AccountID INT PRIMARY KEY,
        CardNumber BIGINT,
        ExpirationDate DATE CHECK (ExpirationDate > CURRENT_DATE),
        PIN INT,
        VerifyCode INT,
        FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) ON DELETE CASCADE
);


CREATE TABLE Loans (
        AccountID INT PRIMARY KEY,
        InterestRate FLOAT CHECK (InterestRate > 0),
        LoanTerm DATE,
        Collateral VARCHAR(100),
        Schedule VARCHAR(100),
        Balance DECIMAL(15, 2) CHECK (Balance < 0),
        FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) ON DELETE CASCADE
);


CREATE TABLE Transactions (
        TransactionID SERIAL PRIMARY KEY,
        TransactionDate DATE NOT NULL,
        Amount DECIMAL(8, 2) NOT NULL CHECK (amount > 0.00 AND amount <= 250000.00),
        TransactionType VARCHAR(100) NOT NULL,
        AccountID INT NOT NULL,
        BranchID INT NOT NULL,
        EmployeeID INT NOT NULL,
        FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) ON DELETE CASCADE,
        FOREIGN KEY (BranchID) REFERENCES Branches(BranchID),
        FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);


CREATE TABLE LoanPayments (
        TransactionID INT PRIMARY KEY,
        Late BOOLEAN NOT NULL,
        Fees DECIMAL(7, 2) DEFAULT 0.00,
        InterestAmount DECIMAL(7, 2) NOT NULL,
        PrincipalAmount DECIMAL(9, 2) NOT NULL,
        FOREIGN KEY (TransactionID) REFERENCES Transactions(TransactionID) ON DELETE CASCADE
);


CREATE TABLE ATM (
        BranchID INT PRIMARY KEY,
        MachineType VARCHAR(100),
        InstallDate DATE,
        LastMaintenance DATE,
        WithdrawalLimit DECIMAL (12,2),
        FOREIGN KEY (BranchID) REFERENCES Branches(BranchID) ON DELETE CASCADE
);