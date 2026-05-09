USE BankManagementSystem;
GO

-- ============================================
-- DISPLAY ALL CUSTOMERS
-- ============================================

SELECT * FROM Customers;
GO


-- ============================================
-- DISPLAY ALL ACCOUNTS
-- ============================================

SELECT * FROM Accounts;
GO


-- ============================================
-- SAVINGS ACCOUNT HOLDERS
-- ============================================

SELECT *
FROM Accounts
WHERE AccountType = 'Savings';
GO


-- ============================================
-- TOTAL BANK BALANCE
-- ============================================

SELECT
SUM(Balance) AS TotalBankBalance
FROM Accounts;
GO


-- ============================================
-- TOTAL CUSTOMERS
-- ============================================

SELECT
COUNT(*) AS TotalCustomers
FROM Customers;
GO