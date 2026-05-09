USE BankManagementSystem;
GO

-- ============================================
-- INNER JOIN
-- ============================================

SELECT
    C.FullName,
    A.AccountType,
    A.Balance

FROM Customers C
INNER JOIN Accounts A
ON C.CustomerID = A.CustomerID;

GO


-- ============================================
-- LEFT JOIN
-- ============================================

SELECT
    C.FullName,
    L.LoanAmount

FROM Customers C
LEFT JOIN Loans L
ON C.CustomerID = L.CustomerID;

GO


-- ============================================
-- RIGHT JOIN
-- ============================================

SELECT
    C.FullName,
    A.AccountType

FROM Customers C
RIGHT JOIN Accounts A
ON C.CustomerID = A.CustomerID;

GO


-- ============================================
-- FULL JOIN
-- ============================================

SELECT
    C.FullName,
    L.LoanAmount

FROM Customers C
FULL JOIN Loans L
ON C.CustomerID = L.CustomerID;

GO