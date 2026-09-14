-- =========================================================
-- E-COMMERCE SQL PROJECT
-- FILE 1: DDL COMMANDS
-- =========================================================

-- DDL = Data Definition Language
-- Used to CREATE, ALTER and DROP database objects.


-- =========================================================
-- 1. CREATE DATABASE
-- =========================================================

-- Creates a new database called ecommerce_db

CREATE DATABASE ecommerce_db;


-- =========================================================
-- 2. SELECT / USE DATABASE
-- =========================================================

-- Tells MySQL that we want to work inside ecommerce_db

USE ecommerce_db;


-- =========================================================
-- 3. CREATE CUSTOMERS TABLE
-- =========================================================

-- Stores information about customers

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    registration_date DATE
);

-- customer_id = unique ID for every customer
-- PRIMARY KEY = uniquely identifies each customer
-- AUTO_INCREMENT = automatically generates ID
-- NOT NULL = value cannot be empty
-- UNIQUE = duplicate emails are not allowed


-- =========================================================
-- 4. CREATE CATEGORIES TABLE
-- =========================================================

-- Stores product categories such as Electronics,
-- Clothing, Books, etc.

CREATE TABLE Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL
);


-- =========================================================
-- 5. CREATE PRODUCTS TABLE
-- =========================================================

-- Stores information about products

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category_id INT,
    price DECIMAL(10,2),
    stock INT,

    -- Connects Products with Categories
    FOREIGN KEY (category_id)
    REFERENCES Categories(category_id)
);

-- FOREIGN KEY means:
-- category_id in Products must exist in Categories


-- =========================================================
-- 6. CREATE EMPLOYEES TABLE
-- =========================================================

-- Stores employees and their managers

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100),
    manager_id INT,
    department VARCHAR(50),
    salary DECIMAL(10,2),

    -- manager_id refers to another employee
    FOREIGN KEY (manager_id)
    REFERENCES Employees(employee_id)
);

-- This table references ITSELF.
-- This will later allow us to practice SELF JOIN.


-- =========================================================
-- 7. CREATE ORDERS TABLE
-- =========================================================

-- Stores customer orders

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    status VARCHAR(30),
    total_amount DECIMAL(10,2),

    -- Connects an order to a customer
    FOREIGN KEY (customer_id)
    REFERENCES Customers(customer_id)
);


-- =========================================================
-- 8. CREATE ORDER_ITEMS TABLE
-- =========================================================

-- Stores individual products inside each order

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),

    -- Connect Order_Items with Orders
    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id),

    -- Connect Order_Items with Products
    FOREIGN KEY (product_id)
    REFERENCES Products(product_id)
);


-- =========================================================
-- 9. CREATE PAYMENTS TABLE
-- =========================================================

-- Stores payment information for orders

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    payment_method VARCHAR(30),

    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id)
);


-- =========================================================
-- 10. ALTER TABLE - ADD PHONE
-- =========================================================

-- ALTER is used to modify an existing table.

-- Here we add a new column called phone
-- to the Customers table.

ALTER TABLE Customers
ADD phone VARCHAR(15);


-- =========================================================
-- 11. ALTER TABLE - ADD BRAND
-- =========================================================

-- Adds a brand column to Products.

ALTER TABLE Products
ADD brand VARCHAR(50);


-- =========================================================
-- 12. ALTER TABLE - MODIFY COLUMN
-- =========================================================

-- Changes the price column's DECIMAL size.

ALTER TABLE Products
MODIFY price DECIMAL(12,2);


-- =========================================================
-- 13. ALTER TABLE - RENAME COLUMN
-- =========================================================

-- Changes column name from 'name' to 'customer_name'.

ALTER TABLE Customers
RENAME COLUMN name TO customer_name;


-- =========================================================
-- END OF FILE 1
-- =========================================================