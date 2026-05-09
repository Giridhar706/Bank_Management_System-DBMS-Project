USE BankManagementSystem;
GO

-- ============================================
-- DROP FUNCTION IF EXISTS
-- ============================================

IF OBJECT_ID('fn_CalculateInterest', 'FN') IS NOT NULL
DROP FUNCTION fn_CalculateInterest;

GO


-- ============================================
-- CREATE FUNCTION
-- ============================================

CREATE FUNCTION fn_CalculateInterest
(
    @Balance DECIMAL(12,2),
    @Rate DECIMAL(5,2)
)

RETURNS DECIMAL(12,2)

AS
BEGIN

    DECLARE @Interest DECIMAL(12,2);

    SET @Interest = (@Balance * @Rate) / 100;

    RETURN @Interest;

END;

GO


-- ============================================
-- EXECUTE FUNCTION
-- ============================================

SELECT
dbo.fn_CalculateInterest(50000,5)
AS AnnualInterest;

GO