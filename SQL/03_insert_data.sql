USE BankManagementSystem;
GO

-- ============================================
-- DELETE OLD DATA
-- Makes query reusable
-- ============================================

DELETE FROM Transactions;
DELETE FROM Loans;
DELETE FROM Accounts;
DELETE FROM Customers;

GO


-- ============================================
-- RESET IDENTITY VALUES
-- ============================================

DBCC CHECKIDENT ('Customers', RESEED, 0);
DBCC CHECKIDENT ('Accounts', RESEED, 1000);
DBCC CHECKIDENT ('Transactions', RESEED, 0);
DBCC CHECKIDENT ('Loans', RESEED, 0);

GO


-- ============================================
-- INSERT CUSTOMERS
-- ============================================

INSERT INTO Customers
(
    FullName,
    Email,
    PhoneNumber,
    Address,
    DateOfBirth
)

VALUES

('Rahul Sharma','rahul@gmail.com','9876543210','Delhi','1998-04-12'),

('Priya Verma','priya@gmail.com','9876501234','Mumbai','1999-08-25'),

('Amit Singh','amit@gmail.com','9123456780','Bangalore','1997-01-18'),

('Sneha Das','sneha@gmail.com','9988776655','Kolkata','2000-10-10');

GO


-- ============================================
-- INSERT ACCOUNTS
-- ============================================

INSERT INTO Accounts
(
    CustomerID,
    AccountType,
    Balance
)

VALUES

(1,'Savings',50000),

(2,'Current',75000),

(3,'Savings',120000),

(4,'Savings',35000);

GO


-- ============================================
-- INSERT TRANSACTIONS
-- ============================================

INSERT INTO Transactions
(
    AccountID,
    TransactionType,
    Amount,
    Remarks
)

VALUES

(1001,'Deposit',10000,'Salary Credit'),

(1002,'Withdrawal',5000,'ATM Withdrawal'),

(1003,'Deposit',20000,'Business Income'),

(1004,'Transfer',7000,'Online Transfer');

GO


-- ============================================
-- INSERT LOANS
-- ============================================

INSERT INTO Loans
(
    CustomerID,
    LoanAmount,
    InterestRate,
    LoanStatus
)

VALUES

(1,500000,8.5,'Approved'),

(2,200000,7.8,'Pending'),

(3,1000000,9.2,'Approved');

GO

USE BankManagementSystem;
GO

SELECT * FROM Customers;

SELECT * FROM Accounts;

SELECT * FROM Transactions;

SELECT * FROM Loans;