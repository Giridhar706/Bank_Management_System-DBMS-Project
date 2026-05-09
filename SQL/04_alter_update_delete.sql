USE BankManagementSystem;
GO

-- ============================================
-- ALTER TABLE
-- Add PAN Number column safely
-- ============================================

IF COL_LENGTH('Customers', 'PANNumber') IS NULL
BEGIN
    ALTER TABLE Customers
    ADD PANNumber VARCHAR(20);
END
GO


-- ============================================
-- UPDATE PAN NUMBERS
-- ============================================

UPDATE Customers
SET PANNumber = 'ABCDE1234F'
WHERE CustomerID = 1;

UPDATE Customers
SET PANNumber = 'PQRSX5678L'
WHERE CustomerID = 2;

UPDATE Customers
SET PANNumber = 'LMNOP4321K'
WHERE CustomerID = 3;

UPDATE Customers
SET PANNumber = 'ZXCVB9087P'
WHERE CustomerID = 4;

GO


-- ============================================
-- UPDATE ACCOUNT BALANCE
-- ============================================

UPDATE Accounts
SET Balance = Balance + 5000
WHERE AccountID = 1001;

GO


-- ============================================
-- DELETE ONE TRANSACTION RECORD
-- ============================================

DELETE FROM Transactions
WHERE TransactionID = 2;

GO


-- ============================================
-- CREATE TEMP TABLE FOR TRUNCATE DEMO
-- ============================================

IF OBJECT_ID('TempData', 'U') IS NOT NULL
DROP TABLE TempData;

GO

CREATE TABLE TempData
(
    ID INT
);

GO


-- ============================================
-- INSERT SAMPLE DATA
-- ============================================

INSERT INTO TempData
VALUES
(1),
(2),
(3);

GO


-- ============================================
-- CHECK DATA BEFORE TRUNCATE
-- ============================================

SELECT * FROM TempData;

GO


-- ============================================
-- TRUNCATE TABLE
-- Removes all rows quickly
-- ============================================

TRUNCATE TABLE TempData;

GO


-- ============================================
-- CHECK DATA AFTER TRUNCATE
-- ============================================

SELECT * FROM TempData;

GO