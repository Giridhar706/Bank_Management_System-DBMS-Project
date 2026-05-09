USE BankManagementSystem;
GO

-- ============================================
-- DROP INDEX IF EXISTS
-- ============================================

IF EXISTS
(
    SELECT *
    FROM sys.indexes
    WHERE name = 'IDX_Customers_Email'
)
DROP INDEX IDX_Customers_Email
ON Customers;

GO


-- ============================================
-- CREATE INDEX
-- ============================================

CREATE NONCLUSTERED INDEX IDX_Customers_Email
ON Customers(Email);

GO