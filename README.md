
# 🛒 E-Commerce Order & Sales Management System

A MySQL-based E-Commerce database project designed to practice and demonstrate core SQL concepts using a real-world order and sales management scenario.

## 📌 Project Overview

This project simulates an e-commerce company's database for managing customers, products, categories, orders, payments, and employees.

The project focuses on creating and managing a relational database and solving SQL problems using different SQL commands and concepts.

## 🛠️ Technologies Used

- MySQL
- SQL
- MySQL Workbench

## 🗄️ Database Tables

The project includes the following tables:

- **Customers** – Stores customer information
- **Categories** – Stores product categories
- **Products** – Stores product details, prices, stock, and brands
- **Employees** – Stores employees and manager relationships
- **Orders** – Stores customer orders
- **Order_Items** – Stores products included in orders
- **Payments** – Stores payment information

## 📂 Project Files

### 1. `DDL.sql`

Contains Data Definition Language commands used to create and modify the database structure.

Concepts covered:

- CREATE DATABASE
- CREATE TABLE
- ALTER TABLE

### 2. `DML.sql`

Contains Data Manipulation Language commands used to work with data.

Concepts covered:

- INSERT
- SELECT
- UPDATE
- DELETE
- WHERE
- ORDER BY

### 3. `JOINS.sql`

Contains queries for combining and analyzing data from multiple tables.

Concepts covered:

- INNER JOIN
- LEFT JOIN
- SELF JOIN
- CROSS JOIN
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()
- GROUP BY
- HAVING
- Subqueries

### 4. `DCL & TCL.sql`

Contains database permission and transaction management commands.

DCL concepts:

- CREATE USER
- GRANT
- REVOKE
- SHOW GRANTS

TCL concepts:

- START TRANSACTION
- COMMIT
- ROLLBACK
- SAVEPOINT

### 5. `Project Questions & Solutions.sql`

Contains 25 SQL practice questions divided into Beginner, Intermediate, and Advanced levels.

The questions cover:

- Filtering data
- Sorting data
- Aggregate functions
- Joins
- GROUP BY
- HAVING
- Subqueries
- Nested queries
- Top-N queries
- SELF JOIN
- Sales analysis

## 📚 SQL Concepts Covered

### DDL – Data Definition Language

```text
CREATE
ALTER
DROP
````

### DML – Data Manipulation Language

```text
SELECT
INSERT
UPDATE
DELETE
```

### DCL – Data Control Language

```text
GRANT
REVOKE
```

### TCL – Transaction Control Language

```text
START TRANSACTION
COMMIT
ROLLBACK
SAVEPOINT
```

### Joins

```text
INNER JOIN
LEFT JOIN
SELF JOIN
CROSS JOIN
```

### Aggregate Functions

```text
COUNT()
SUM()
AVG()
MAX()
MIN()
```

### Grouping and Filtering

```text
WHERE
GROUP BY
HAVING
ORDER BY
```

### Advanced SQL

```text
Subqueries
Nested Queries
LIMIT
OFFSET
```

## 🎯 Project Objectives

* Understand relational database design
* Create and modify database tables
* Understand primary keys and foreign keys
* Insert, update, delete, and retrieve data
* Understand different types of SQL JOINs
* Use aggregate functions for data analysis
* Group and filter data using GROUP BY and HAVING
* Write subqueries and nested queries
* Understand database user permissions
* Understand SQL transactions
* Solve real-world SQL problems
* Practice SQL interview questions

## 🚀 How to Run

1. Open **MySQL Workbench**.
2. Connect to your MySQL server.
3. Run `DDL.sql` first to create the database and tables.
4. Run `DML.sql` to insert the initial data.
5. Run `JOINS.sql` to practice joins, aggregate functions, grouping, and subqueries.
6. Run `DCL & TCL.sql` to practice permissions and transactions.
7. Open `Project Questions & Solutions.sql` and try solving the 25 questions yourself before checking the answers.

## 🧠 Learning Approach

The project is designed to practice SQL step-by-step:

```text
Database Creation
       ↓
Table Creation
       ↓
Insert Data
       ↓
Retrieve & Modify Data
       ↓
Joins
       ↓
Aggregate Functions
       ↓
GROUP BY & HAVING
       ↓
Subqueries
       ↓
DCL & TCL
       ↓
SQL Interview Questions
```

## 📌 Note

Some JOIN, aggregation, and advanced queries depend on transactional data being available in the `Orders`, `Order_Items`, and `Employees` tables.

If these tables do not contain sufficient sample records, some queries may return empty or limited results. The queries are included to demonstrate the relevant SQL concepts and can be tested with additional sample data.

## 🔮 Future Improvements

Possible future improvements include:

* Add more realistic order and payment data
* Add more customers and products
* Add product reviews and ratings
* Add inventory management
* Add SQL Views
* Add Stored Procedures
* Add Triggers
* Add Indexing and query optimization
* Connect the database with Python
* Build a Streamlit sales analytics dashboard

## 👨‍💻 Author

**Rishab Das**

This project was created as a SQL learning and portfolio project to practice relational database concepts, data analysis, and SQL interview questions.

## ⭐ Skills Demonstrated

```text
MySQL
SQL
Database Design
DDL
DML
DCL
TCL
Joins
Subqueries
Nested Queries
Aggregate Functions
GROUP BY
HAVING
Transaction Management
Database Permissions
Data Analysis
SQL Problem Solving
```

```
```

