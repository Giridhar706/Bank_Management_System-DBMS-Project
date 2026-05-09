USE BankManagementSystem;
GO

-- ============================================
-- DROP VIEW IF EXISTS
-- ============================================

IF OBJECT_ID('vw_AccountSummary', 'V') IS NOT NULL
DROP VIEW vw_AccountSummary;

GO


-- ============================================
-- CREATE VIEW
-- ============================================

CREATE VIEW vw_AccountSummary
AS

SELECT
    C.FullName,
    A.AccountType,
    A.Balance

FROM Customers C
INNER JOIN Accounts A
ON C.CustomerID = A.CustomerID;

GO


-- ============================================
-- DISPLAY VIEW DATA
-- ============================================

SELECT * FROM vw_AccountSummary;

GO