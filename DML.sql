-- =========================================================
-- E-COMMERCE SQL PROJECT
-- FILE 2: DML COMMANDS
-- =========================================================

-- DML = Data Manipulation Language
-- Used to INSERT, SELECT, UPDATE and DELETE data.


USE ecommerce_db;


-- =========================================================
-- 1. INSERT DATA INTO CATEGORIES
-- =========================================================

-- Adds four product categories.

INSERT INTO Categories (category_name)
VALUES
('Electronics'),
('Clothing'),
('Books'),
('Home Appliances');


-- =========================================================
-- 2. INSERT DATA INTO CUSTOMERS
-- =========================================================

-- Adds customer records.

INSERT INTO Customers
(customer_name, email, city, registration_date, phone)
VALUES
('Rahul Sharma', 'rahul@gmail.com', 'Pune', '2026-01-10', '9876543210'),
('Priya Singh', 'priya@gmail.com', 'Mumbai', '2026-02-15', '9876543211'),
('Aman Verma', 'aman@gmail.com', 'Delhi', '2026-03-20', '9876543212'),
('Sneha Patel', 'sneha@gmail.com', 'Ahmedabad', '2026-04-05', '9876543213'),
('Arjun Das', 'arjun@gmail.com', 'Pune', '2026-05-12', '9876543214');


-- =========================================================
-- 3. INSERT DATA INTO PRODUCTS
-- =========================================================

-- Adds products.
-- category_id connects each product to a category.

INSERT INTO Products
(product_name, category_id, price, stock, brand)
VALUES
('Laptop', 1, 65000, 10, 'Dell'),
('Smartphone', 1, 30000, 20, 'Samsung'),
('Headphones', 1, 3000, 50, 'Sony'),
('T-Shirt', 2, 1200, 100, 'Nike'),
('Jeans', 2, 2500, 70, 'Levis'),
('SQL Book', 3, 800, 40, 'Pearson'),
('Python Book', 3, 1000, 30, 'OReilly'),
('Microwave', 4, 12000, 15, 'LG');


-- =========================================================
-- 4. SELECT - DISPLAY EVERYTHING
-- =========================================================

-- SELECT is used to READ data.

-- * means "all columns"

SELECT *
FROM Customers;


-- =========================================================
-- 5. SELECT - SPECIFIC COLUMNS
-- =========================================================

-- Display only customer name and city.

SELECT customer_name, city
FROM Customers;


-- =========================================================
-- 6. WHERE - FILTER DATA
-- =========================================================

-- Display products whose price is greater than ₹10,000.

SELECT *
FROM Products
WHERE price > 10000;


-- =========================================================
-- 7. ORDER BY - SORT DATA
-- =========================================================

-- DESC = descending order
-- Highest price will appear first.

SELECT *
FROM Products
ORDER BY price DESC;


-- =========================================================
-- 8. UPDATE - CHANGE DATA
-- =========================================================

-- Change Laptop price from ₹65,000 to ₹68,000.

UPDATE Products
SET price = 68000
WHERE product_name = 'Laptop';


-- =========================================================
-- 9. UPDATE - CALCULATE NEW VALUE
-- =========================================================

-- Reduce Laptop stock by 2.

UPDATE Products
SET stock = stock - 2
WHERE product_id = 1;


-- =========================================================
-- 10. DELETE - REMOVE DATA
-- =========================================================

-- Delete product with product_id = 8.

DELETE FROM Products
WHERE product_id = 8;


-- =========================================================
-- END OF FILE 2
-- =========================================================