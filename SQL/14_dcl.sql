USE master;
GO

-- ============================================
-- CREATE LOGIN SAFELY
-- ============================================

IF NOT EXISTS
(
    SELECT *
    FROM sys.server_principals
    WHERE name = 'BankUser'
)

BEGIN

    CREATE LOGIN BankUser
    WITH PASSWORD = 'Bank@123';

END

GO


USE BankManagementSystem;
GO


-- ============================================
-- CREATE USER
-- ============================================

IF NOT EXISTS
(
    SELECT *
    FROM sys.database_principals
    WHERE name = 'BankUser'
)

BEGIN

    CREATE USER BankUser
    FOR LOGIN BankUser;

END

GO


-- ============================================
-- GRANT SELECT
-- ============================================

GRANT SELECT ON Customers TO BankUser;

GO


-- ============================================
-- REVOKE SELECT
-- ============================================

REVOKE SELECT ON Customers FROM BankUser;

GO