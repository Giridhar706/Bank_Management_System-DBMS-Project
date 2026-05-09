# Bank Management System - SQL Server Mini Project

## Project Overview

The Bank Management System is a database mini project developed using Microsoft SQL Server and T-SQL. The project simulates real-world banking operations such as customer management, account handling, transaction processing, loan management, and audit logging.

The project has been designed by applying database normalization techniques and advanced SQL concepts including DDL, DML, joins, subqueries, views, indexes, functions, triggers, TCL, and DCL commands.

---

# Objectives

* Design a normalized relational database system
* Manage customer and account information efficiently
* Track banking transactions and loan details
* Maintain data integrity using constraints
* Demonstrate advanced SQL concepts
* Implement secure and optimized database operations

---

# Technologies Used

* Microsoft SQL Server
* SQL Server Management Studio (SSMS)
* T-SQL
* GitHub

---

# Database Modules

## 1. Customer Management

Stores customer personal information and banking details.

## 2. Account Management

Handles account creation, account types, balances, and status.

## 3. Transaction Management

Maintains transaction records such as deposits, withdrawals, and transfers.

## 4. Loan Management

Tracks loan details, loan amounts, interest rates, and status.

## 5. Audit Logging

Automatically records transaction activities using SQL triggers.

---

# Tables Used

| Table Name   | Description                         |
| ------------ | ----------------------------------- |
| Customers    | Stores customer details             |
| Accounts     | Stores account information          |
| Transactions | Stores transaction records          |
| Loans        | Stores loan details                 |
| AuditLog     | Stores trigger-generated audit logs |

---

# SQL Concepts Implemented

## DDL Commands

* CREATE
* ALTER
* DROP
* TRUNCATE

## DML Commands

* INSERT
* UPDATE
* DELETE

## Constraints

* PRIMARY KEY
* FOREIGN KEY
* UNIQUE
* NOT NULL
* CHECK

## Querying

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* HAVING

## Advanced SQL

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL JOIN
* Subqueries
* Views
* Indexes
* Scalar Functions
* Triggers

## TCL Commands

* COMMIT
* ROLLBACK

## DCL Commands

* GRANT
* REVOKE

---

# Features Implemented

* Customer registration and management
* Bank account management
* Transaction tracking
* Loan management system
* Audit log generation using triggers
* View-based reporting
* Query optimization using indexes
* Transaction handling using TCL
* Access control using DCL
* Database normalization up to BCNF

---

# Relationship Overview

* One Customer can have multiple Accounts
* One Account can have multiple Transactions
* One Customer can have multiple Loans

---

# Project Structure

```bash
Bank-Management-System-DBMS
│
├── SQL
│   ├── 01_database_setup.sql
│   ├── 02_tables.sql
│   ├── 03_insert_data.sql
│   ├── 04_alter_update_delete.sql
│   ├── 05_basic_queries.sql
│   ├── 06_joins.sql
│   ├── 07_subqueries.sql
│   ├── 08_groupby_having.sql
│   ├── 09_views.sql
│   ├── 10_indexes.sql
│   ├── 11_functions.sql
│   ├── 12_triggers.sql
│   ├── 13_tcl.sql
│   ├── 14_dcl.sql
│   └── 15_complex_queries.sql
│
├── ERD
│   └── er_diagram.png
│
├── Documentation
│   └── normalization_report.pdf
│
├── Output
│   └── screenshots
│
└── README.md
```

---

# How to Execute the Project

1. Open SQL Server Management Studio (SSMS)
2. Execute SQL files sequentially
3. Verify tables and outputs using SELECT queries
4. Execute joins, views, triggers, and functions
5. Check audit logs and transaction outputs

---

# Sample Queries

## Fetch All Customers

```sql
SELECT * FROM Customers;
```

## Fetch Savings Account Holders

```sql
SELECT * FROM Accounts
WHERE AccountType = 'Savings';
```

## Fetch Customer and Account Details Using JOIN

```sql
SELECT
    C.FullName,
    A.AccountType,
    A.Balance
FROM Customers C
INNER JOIN Accounts A
ON C.CustomerID = A.CustomerID;
```

---

# Trigger Demonstration

The project includes an AFTER INSERT trigger on the Transactions table that automatically inserts records into the AuditLog table whenever a new transaction is added.

---

# Function Demonstration

A scalar function has been implemented to calculate annual interest based on account balance and interest rate.

---

# Normalization

The database has been normalized up to BCNF to:

* Reduce redundancy
* Improve consistency
* Maintain referential integrity
* Enhance scalability

---

# Learning Outcomes

Through this project, the following concepts were successfully implemented:

* Database Design
* Relational Modeling
* SQL Programming
* Query Optimization
* Trigger Automation
* Transaction Management
* Access Control
* Normalization Techniques

---

# Author

Giridhar Gopal

---

# License

This project is developed for educational and academic purposes.
