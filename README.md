
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
