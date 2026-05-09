USE BankManagementSystem;
GO

-- ============================================
-- TOTAL BALANCE BY ACCOUNT TYPE
-- ============================================

SELECT
    AccountType,
    SUM(Balance) AS TotalBalance

FROM Accounts

GROUP BY AccountType;

GO


-- ============================================
-- ACCOUNT TYPES HAVING BALANCE > 50000
-- ============================================

SELECT
    AccountType,
    SUM(Balance) AS TotalBalance

FROM Accounts

GROUP BY AccountType

HAVING SUM(Balance) > 50000;

GO