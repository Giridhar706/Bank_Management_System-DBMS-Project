USE BankManagementSystem;
GO

-- 1
SELECT TOP 1
    C.FullName,
    A.Balance

FROM Customers C
INNER JOIN Accounts A
ON C.CustomerID = A.CustomerID

ORDER BY A.Balance DESC;

GO


-- 2
SELECT
SUM(Amount) AS TotalTransactionAmount
FROM Transactions;

GO


-- 3
SELECT
AVG(Balance) AS AverageBalance
FROM Accounts;

GO


-- 4
SELECT
C.FullName,
L.LoanAmount

FROM Customers C
INNER JOIN Loans L
ON C.CustomerID = L.CustomerID;

GO


-- 5
SELECT FullName
FROM Customers

WHERE CustomerID NOT IN
(
    SELECT CustomerID
    FROM Loans
);

GO


-- 6
SELECT
AccountType,
COUNT(*) AS TotalAccounts

FROM Accounts

GROUP BY AccountType;

GO


-- 7
SELECT
SUM(LoanAmount) AS TotalLoans
FROM Loans;

GO


-- 8
SELECT TOP 1 *
FROM Transactions
ORDER BY TransactionDate DESC;

GO


-- 9
SELECT
C.FullName,
A.Balance

FROM Customers C
INNER JOIN Accounts A
ON C.CustomerID = A.CustomerID

WHERE A.Balance > 60000;

GO


-- 10
SELECT *
FROM Transactions
WHERE TransactionType = 'Deposit';

GO