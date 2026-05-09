USE BankManagementSystem;
GO

-- ============================================
-- COMMIT TRANSACTION
-- ============================================

BEGIN TRANSACTION;

UPDATE Accounts
SET Balance = Balance - 1000
WHERE AccountID = 1001;

COMMIT;

GO


-- ============================================
-- ROLLBACK TRANSACTION
-- ============================================

BEGIN TRANSACTION;

UPDATE Accounts
SET Balance = Balance - 50000
WHERE AccountID = 1001;

ROLLBACK;

GO