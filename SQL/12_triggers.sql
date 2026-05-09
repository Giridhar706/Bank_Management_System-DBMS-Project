USE BankManagementSystem;
GO

-- ============================================
-- DROP TRIGGER IF EXISTS
-- ============================================

IF OBJECT_ID('trg_AuditTransaction', 'TR') IS NOT NULL
DROP TRIGGER trg_AuditTransaction;

GO


-- ============================================
-- CREATE TRIGGER
-- ============================================

CREATE TRIGGER trg_AuditTransaction
ON Transactions

AFTER INSERT

AS
BEGIN

    INSERT INTO AuditLog
    (
        ActionPerformed,
        Description
    )

    SELECT
        'INSERT',
        'New Transaction Added Amount = '
        + CAST(Amount AS VARCHAR)

    FROM inserted;

END;

GO


-- ============================================
-- TEST TRIGGER
-- ============================================

INSERT INTO Transactions
(
    AccountID,
    TransactionType,
    Amount,
    Remarks
)

VALUES
(1001,'Deposit',15000,'Bonus Amount');

GO


-- ============================================
-- CHECK AUDIT LOG
-- ============================================

SELECT * FROM AuditLog;

GO