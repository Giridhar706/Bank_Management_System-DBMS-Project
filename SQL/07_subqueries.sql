USE BankManagementSystem;
GO

-- ============================================
-- CUSTOMERS WITH ABOVE AVERAGE BALANCE
-- ============================================

SELECT FullName
FROM Customers

WHERE CustomerID IN
(
    SELECT CustomerID
    FROM Accounts

    WHERE Balance >
    (
        SELECT AVG(Balance)
        FROM Accounts
    )
);

GO


-- ============================================
-- HIGHEST ACCOUNT BALANCE
-- ============================================

SELECT *
FROM Accounts

WHERE Balance =
(
    SELECT MAX(Balance)
    FROM Accounts
);

GO