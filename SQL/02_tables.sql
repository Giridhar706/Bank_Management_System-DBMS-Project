USE BankManagementSystem;
GO

-- ============================================
-- DROP OLD TABLES FIRST
-- ============================================

IF OBJECT_ID('Transactions', 'U') IS NOT NULL
DROP TABLE Transactions;

IF OBJECT_ID('Loans', 'U') IS NOT NULL
DROP TABLE Loans;

IF OBJECT_ID('Accounts', 'U') IS NOT NULL
DROP TABLE Accounts;

IF OBJECT_ID('AuditLog', 'U') IS NOT NULL
DROP TABLE AuditLog;

IF OBJECT_ID('Customers', 'U') IS NOT NULL
DROP TABLE Customers;

GO


-- ============================================
-- CUSTOMERS TABLE
-- ============================================

CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY IDENTITY(1,1),

    FullName VARCHAR(100) NOT NULL,

    Email VARCHAR(100) UNIQUE NOT NULL,

    PhoneNumber VARCHAR(15) UNIQUE NOT NULL,

    Address VARCHAR(200),

    DateOfBirth DATE NOT NULL,

    CreatedAt DATETIME DEFAULT GETDATE()
);
GO


-- ============================================
-- ACCOUNTS TABLE
-- ============================================

CREATE TABLE Accounts
(
    AccountID INT PRIMARY KEY IDENTITY(1001,1),

    CustomerID INT NOT NULL,

    AccountType VARCHAR(20) NOT NULL,

    Balance DECIMAL(12,2) DEFAULT 0,

    AccountStatus VARCHAR(20) DEFAULT 'Active',

    CreatedDate DATETIME DEFAULT GETDATE(),

    CONSTRAINT FK_Accounts_Customers
    FOREIGN KEY(CustomerID)
    REFERENCES Customers(CustomerID),

    CONSTRAINT CHK_AccountType
    CHECK(AccountType IN ('Savings','Current')),

    CONSTRAINT CHK_Balance
    CHECK(Balance >= 0)
);
GO


-- ============================================
-- TRANSACTIONS TABLE
-- ============================================

CREATE TABLE Transactions
(
    TransactionID INT PRIMARY KEY IDENTITY(1,1),

    AccountID INT NOT NULL,

    TransactionType VARCHAR(20) NOT NULL,

    Amount DECIMAL(12,2) NOT NULL,

    TransactionDate DATETIME DEFAULT GETDATE(),

    Remarks VARCHAR(200),

    CONSTRAINT FK_Transactions_Accounts
    FOREIGN KEY(AccountID)
    REFERENCES Accounts(AccountID),

    CONSTRAINT CHK_TransactionType
    CHECK(TransactionType IN ('Deposit','Withdrawal','Transfer'))
);
GO


-- ============================================
-- LOANS TABLE
-- ============================================

CREATE TABLE Loans
(
    LoanID INT PRIMARY KEY IDENTITY(1,1),

    CustomerID INT NOT NULL,

    LoanAmount DECIMAL(12,2),

    InterestRate DECIMAL(5,2),

    LoanStatus VARCHAR(20),

    LoanDate DATETIME DEFAULT GETDATE(),

    CONSTRAINT FK_Loans_Customers
    FOREIGN KEY(CustomerID)
    REFERENCES Customers(CustomerID)
);
GO


-- ============================================
-- AUDIT LOG TABLE
-- ============================================

CREATE TABLE AuditLog
(
    LogID INT PRIMARY KEY IDENTITY(1,1),

    ActionPerformed VARCHAR(100),

    ActionDate DATETIME DEFAULT GETDATE(),

    Description VARCHAR(300)
);
GO