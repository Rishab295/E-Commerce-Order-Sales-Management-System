
# 🛒 E-Commerce Order & Sales Management System

A MySQL-based E-Commerce database project designed to practice and demonstrate core SQL concepts using a real-world order and sales management scenario.

---

## 📌 Project Overview

This project simulates the database of an e-commerce company.

The database manages:

- Customers
- Products
- Product Categories
- Orders
- Order Items
- Payments
- Employees and Managers

The project focuses on writing SQL queries to create, manage, analyze, and retrieve data from a relational database.

---

## 🛠️ Technologies Used

- MySQL
- SQL
- MySQL Workbench

---

## 🗄️ Database Structure

The project contains the following tables:

### 1. Customers
Stores customer information such as:

- Customer ID
- Customer Name
- Email
- City
- Registration Date
- Phone

### 2. Categories
Stores product categories such as:

- Electronics
- Clothing
- Books
- Home Appliances

### 3. Products
Stores information about products including:

- Product ID
- Product Name
- Category
- Price
- Stock
- Brand

### 4. Employees
Stores employee information and their managers.

This table is also used to demonstrate SELF JOIN.

### 5. Orders
Stores customer order information including:

- Order ID
- Customer ID
- Order Date
- Order Status
- Total Amount

### 6. Order_Items
Stores individual products included in each order.

### 7. Payments
Stores payment information related to customer orders.

---

## 📂 Project Files

The project is divided into multiple SQL files based on different SQL concepts.

### `DDL.sql`

Contains Data Definition Language commands:

- CREATE DATABASE
- CREATE TABLE
- ALTER TABLE

Used to create and modify the database structure.

---

### `DML.sql`

Contains Data Manipulation Language commands:

- INSERT
- SELECT
- UPDATE
- DELETE

Used to insert, retrieve, modify, and delete data.

---

### `JOINS.sql`

Contains SQL JOIN operations:

- INNER JOIN
- LEFT JOIN
- SELF JOIN
- CROSS JOIN

These queries demonstrate how data can be retrieved from multiple related tables.

---

### `DCL & TCL.sql`

Contains:

#### DCL
- CREATE USER
- GRANT
- REVOKE
- SHOW GRANTS

#### TCL
- START TRANSACTION
- COMMIT
- ROLLBACK
- SAVEPOINT

These commands demonstrate database permissions and transaction management.

---

### `Project Questions & Solutions.sql`

Contains 25 SQL practice problems divided into three levels.

#### 🟢 Beginner

1. Display all customers
2. Display products costing more than ₹10,000
3. Find customers from Pune
4. Find the most expensive product
5. Find the cheapest product
6. Count total customers
7. Calculate average product price

#### 🟡 Intermediate

8. Display customers and their orders
9. Find customers who haven't ordered anything
10. Display products with category names
11. Calculate total sales
12. Calculate total spending per customer
13. Calculate number of products in each category
14. Find categories having more than 2 products
15. Find customers who spent more than ₹50,000

#### 🔴 Advanced

16. Find the second-highest product price
17. Find products above the average price
18. Find the customer who spent the most
19. Find the category generating the highest sales
20. Find employees and their managers using SELF JOIN
21. Find customers spending more than average customer spending
22. Find products that have never been ordered
23. Find the top 3 customers by spending
24. Find the most frequently purchased product
25. Find the month with the highest sales

---

## 📚 SQL Concepts Covered

This project demonstrates the following SQL concepts:

### DDL - Data Definition Language

```text
CREATE
ALTER
DROP

DML - Data Manipulation Language
SELECT
INSERT
UPDATE
DELETE
DCL - Data Control Language
GRANT
REVOKE
TCL - Transaction Control Language
START TRANSACTION
COMMIT
ROLLBACK
SAVEPOINT
Joins
INNER JOIN
LEFT JOIN
SELF JOIN
CROSS JOIN
Aggregate Functions
COUNT()
SUM()
AVG()
MAX()
MIN()
Grouping and Filtering
GROUP BY
HAVING
WHERE
ORDER BY
Subqueries
Subqueries
Nested Queries
🎯 Project Objectives

The main objectives of this project are:

Understand relational database design
Practice creating database tables
Understand primary keys and foreign keys
Insert and manipulate data
Retrieve data using SELECT queries
Understand different types of JOINs
Work with aggregate functions
Use GROUP BY and HAVING
Write subqueries and nested queries
Understand database user permissions
Understand SQL transactions
Solve real-world SQL problems
🚀 How to Run the Project
Step 1: Open MySQL Workbench

Open MySQL Workbench and connect to your MySQL server.

Step 2: Run the DDL file

Run:

DDL.sql

This creates the database and required tables.

Step 3: Run the DML file

Run:

DML.sql

This inserts the initial customer, category, and product data.

Step 4: Run the JOIN queries

Run:

JOINS.sql

This demonstrates different JOIN operations and aggregate queries.

Step 5: Run DCL & TCL

Run:

DCL & TCL.sql

This demonstrates database permissions and transactions.

Step 6: Practice the final questions

Open:

Project Questions & Solutions.sql

Try solving each question yourself before checking the solution.

🧠 Learning Approach

The project is designed to be practiced step-by-step.

Instead of directly memorizing SQL queries, the goal is to understand:

Problem
   ↓
Identify required table(s)
   ↓
Identify relationship between tables
   ↓
Choose JOIN / WHERE / GROUP BY / HAVING
   ↓
Apply aggregate function if required
   ↓
Write SQL query
   ↓
Analyze the result
📌 Important Note

Some JOIN, aggregation, and advanced queries depend on transactional data in the Orders, Order_Items, and Employees tables.

If these tables do not contain sufficient sample records, some queries may return empty or limited results.

The SQL queries are included to demonstrate the corresponding SQL concepts and can be tested with additional sample data.

📈 Future Improvements

Possible future improvements for this project include:

Add more realistic order and payment data
Add more customers and products
Add product reviews and ratings
Add inventory management
Add stored procedures
Add SQL views
Add indexes for query optimization
Add triggers
Connect the database with Python
Build a Streamlit dashboard for sales analytics
👨‍💻 Author

Rishab Das

This project was created as a SQL learning and portfolio project to practice relational database concepts and SQL interview questions.

⭐ Skills Demonstrated
MySQL
SQL
Database Design
Data Manipulation
Data Definition
Joins
Subqueries
Aggregate Functions
Data Analysis
Transaction Management
Database Permissions
Problem Solving
