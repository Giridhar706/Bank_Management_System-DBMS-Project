-- ============================================
-- CREATE DATABASE 
-- ============================================

IF DB_ID('BankManagementSystem') IS NULL
BEGIN
    CREATE DATABASE BankManagementSystem;
END
GO

USE BankManagementSystem;
GO