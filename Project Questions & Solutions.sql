-- =====================================================
-- E-COMMERCE SQL PROJECT
-- FINAL PROJECT QUESTIONS + ANSWERS
-- =====================================================
--------------------------------------------------------

-- Run each question ONE BY ONE.
-- First try to write the query yourself.
-- Then compare it with the answer.
-----------------------------------

-- =====================================================
USE ecommerce_db;
-- =====================================================
-- 🟢 BEGINNER LEVEL
-- =====================================================

-- =====================================================
-- QUESTION 1: Display all customers
-- =====================================================

-- * means all columns
-- FROM Customers means get data from Customers table

SELECT *
FROM Customers;

-- =====================================================
-- QUESTION 2: Display products costing more than ₹10,000
-- =====================================================

-- WHERE is used to filter rows.
-- We only want products where price is greater than 10000.

SELECT *
FROM Products
WHERE price > 10000;

-- =====================================================
-- QUESTION 3: Find all customers from Pune
-- =====================================================

-- WHERE filters the customers.
-- We are checking whether city is equal to 'Pune'.

SELECT *
FROM Customers
WHERE city = 'Pune';

-- =====================================================
-- QUESTION 4: Find the most expensive product
-- =====================================================

-- MAX() finds the highest price.
-- The subquery finds the highest price first.
-- The outer query finds the product having that price.

SELECT *
FROM Products
WHERE price = (
SELECT MAX(price)
FROM Products
);

-- =====================================================
-- QUESTION 5: Find the cheapest product
-- =====================================================

-- MIN() finds the lowest price.
-- The subquery finds the minimum price.
-- The outer query finds the product with that price.

SELECT *
FROM Products
WHERE price = (
SELECT MIN(price)
FROM Products
);

-- =====================================================
-- QUESTION 6: Count the total number of customers
-- =====================================================

-- COUNT(*) counts the number of rows.
-- AS gives the result a meaningful name.

SELECT COUNT(*) AS total_customers
FROM Customers;

-- =====================================================
-- QUESTION 7: Calculate the average product price
-- =====================================================

-- AVG() calculates the average value of price.

SELECT AVG(price) AS average_product_price
FROM Products;

-- =====================================================
-- 🟡 INTERMEDIATE LEVEL
-- =====================================================

-- =====================================================
-- QUESTION 8: Display customers and their orders
-- =====================================================

-- We need data from Customers and Orders.
-- customer_id connects both tables.
-- INNER JOIN returns customers who have matching orders.

SELECT
c.customer_name,
o.order_id,
o.order_date,
o.total_amount,
o.status
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

-- =====================================================
-- QUESTION 9: Display customers who haven't ordered anything
-- =====================================================

-- LEFT JOIN keeps ALL customers.
-- Customers without orders will have NULL in order columns.
-- IS NULL finds those customers.

SELECT
c.customer_id,
c.customer_name
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- =====================================================
-- QUESTION 10: Display products with their category names
-- =====================================================

-- Products contains category_id.
-- Categories also contains category_id.
-- JOIN connects products to their categories.

SELECT
p.product_name,
p.price,
p.stock,
c.category_name
FROM Products p
INNER JOIN Categories c
ON p.category_id = c.category_id;

-- =====================================================
-- QUESTION 11: Calculate total sales
-- =====================================================

-- SUM() adds all values in total_amount.
-- This gives the total sales amount.

SELECT
SUM(total_amount) AS total_sales
FROM Orders;

-- =====================================================
-- QUESTION 12: Calculate total spending per customer
-- =====================================================

-- JOIN connects Customers with Orders.
-- GROUP BY creates one group for each customer.
-- SUM() calculates the total amount spent by each customer.

SELECT
c.customer_name,
SUM(o.total_amount) AS total_spending
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;

-- =====================================================
-- QUESTION 13: Calculate number of products in each category
-- =====================================================

-- COUNT() counts products.
-- GROUP BY creates a group for every category.
-- LEFT JOIN also shows categories having zero products.

SELECT
c.category_name,
COUNT(p.product_id) AS number_of_products
FROM Categories c
LEFT JOIN Products p
ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name;

-- =====================================================
-- QUESTION 14: Find categories having more than 2 products
-- =====================================================

-- GROUP BY creates groups based on category.
-- COUNT() counts products in each category.
-- HAVING filters the groups.
-- HAVING is used because we are filtering an aggregate result.

SELECT
c.category_name,
COUNT(p.product_id) AS number_of_products
FROM Categories c
INNER JOIN Products p
ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name
HAVING COUNT(p.product_id) > 2;

-- =====================================================
-- QUESTION 15: Find customers who spent more than ₹50,000
-- =====================================================

-- First, group orders by customer.
-- SUM() calculates each customer's total spending.
-- HAVING keeps only customers above ₹50,000.

SELECT
c.customer_name,
SUM(o.total_amount) AS total_spending
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING SUM(o.total_amount) > 50000;

-- =====================================================
-- 🔴 ADVANCED LEVEL
-- =====================================================

-- =====================================================
-- QUESTION 16: Find the second-highest product price
-- =====================================================

-- ORDER BY price DESC sorts prices from highest to lowest.
-- OFFSET 1 skips the highest price.
-- LIMIT 1 returns the next price.
-- DISTINCT prevents duplicate prices from affecting the result.

SELECT DISTINCT price
FROM Products
ORDER BY price DESC
LIMIT 1 OFFSET 1;

-- =====================================================
-- QUESTION 17: Find products whose price is above
-- the average product price
-- =====================================================

-- The INNER QUERY calculates the average price.
-- The OUTER QUERY finds products above that average.
-- This is called a SUBQUERY.

SELECT
product_name,
price
FROM Products
WHERE price > (
SELECT AVG(price)
FROM Products
);

-- =====================================================
-- QUESTION 18: Find the customer who spent the most
-- =====================================================

-- GROUP BY creates one group per customer.
-- SUM() calculates total spending.
-- ORDER BY DESC puts the highest spender first.
-- LIMIT 1 returns only the top customer.

SELECT
c.customer_name,
SUM(o.total_amount) AS total_spending
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spending DESC
LIMIT 1;

-- =====================================================
-- QUESTION 19: Find the category generating the highest sales
-- =====================================================

## -- Categories → Products → Order_Items

-- Order_Items tells us which products were purchased.
-- quantity × price gives sales for each item.
-- SUM() calculates total sales for each category.
-- ORDER BY DESC puts the highest-selling category first.
-- LIMIT 1 returns the top category.

SELECT
c.category_name,
SUM(oi.quantity * oi.price) AS category_sales
FROM Categories c
INNER JOIN Products p
ON c.category_id = p.category_id
INNER JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY c.category_id, c.category_name
ORDER BY category_sales DESC
LIMIT 1;

-- =====================================================
-- QUESTION 20: Find employees and their managers
-- using SELF JOIN
-- =====================================================

## -- SELF JOIN means joining a table with itself.

-- e = Employee
-- m = Manager
--------------

-- manager_id points to another employee's employee_id.

SELECT
e.employee_name AS Employee,
m.employee_name AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.manager_id = m.employee_id;

-- =====================================================
-- QUESTION 21: Find customers whose spending is greater
-- than the average customer spending
-- =====================================================

-- Step 1:
-- Calculate total spending for each customer.
----------------------------------------------

-- Step 2:
-- Calculate the average of those customer totals.
--------------------------------------------------

-- Step 3:
-- Return customers spending above that average.
------------------------------------------------

-- This uses a nested query.

SELECT
c.customer_name,
SUM(o.total_amount) AS total_spending
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING SUM(o.total_amount) > (
SELECT AVG(customer_total)
FROM (
SELECT
customer_id,
SUM(total_amount) AS customer_total
FROM Orders
GROUP BY customer_id
) AS customer_spending
);

-- =====================================================
-- QUESTION 22: Find products that have NEVER been ordered
-- =====================================================

-- LEFT JOIN keeps every product.
-- Products without matching Order_Items will have NULL.
-- IS NULL identifies products that were never ordered.

SELECT
p.product_id,
p.product_name
FROM Products p
LEFT JOIN Order_Items oi
ON p.product_id = oi.product_id
WHERE oi.order_item_id IS NULL;

-- =====================================================
-- QUESTION 23: Find the TOP 3 customers by spending
-- =====================================================

-- GROUP BY creates one group per customer.
-- SUM() calculates total spending.
-- ORDER BY DESC sorts from highest to lowest.
-- LIMIT 3 returns the top three customers.

SELECT
c.customer_name,
SUM(o.total_amount) AS total_spending
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spending DESC
LIMIT 3;

-- =====================================================
-- QUESTION 24: Find the most frequently purchased product
-- =====================================================

-- Order_Items contains quantity purchased.
-- SUM(quantity) calculates total units sold.
-- GROUP BY creates one group for each product.
-- ORDER BY DESC puts the most purchased product first.
-- LIMIT 1 returns the most purchased product.

SELECT
p.product_name,
SUM(oi.quantity) AS total_quantity_sold
FROM Products p
INNER JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 1;

-- =====================================================
-- QUESTION 25: Find the month with the highest sales
-- =====================================================

-- MONTH(order_date) extracts the month number.
-- SUM(total_amount) calculates sales for each month.
-- GROUP BY creates one group for each month.
-- ORDER BY DESC puts the highest-sales month first.
-- LIMIT 1 returns the month with the highest sales.

SELECT
MONTH(order_date) AS sales_month,
SUM(total_amount) AS monthly_sales
FROM Orders
GROUP BY MONTH(order_date)
ORDER BY monthly_sales DESC
LIMIT 1;

-- =====================================================
-- 🎯 END OF FINAL PROJECT
-- =====================================================
--------------------------------------------------------

## -- Concepts practiced:

-- SELECT
-- WHERE
-- ORDER BY
-- INSERT
-- UPDATE
-- DELETE
-- INNER JOIN
-- LEFT JOIN
-- SELF JOIN
-- CROSS JOIN
-- COUNT()
-- SUM()
-- AVG()
-- MAX()
-- MIN()
-- GROUP BY
-- HAVING
-- SUBQUERIES
-- NESTED QUERIES
-- LIMIT
-- OFFSET
---------

-- =====================================================
