-- =========================================================
-- E-COMMERCE SQL PROJECT
-- FILE 3: JOINS + AGGREGATE + SUBQUERIES
-- =========================================================

USE ecommerce_db;


-- =========================================================
-- 1. INNER JOIN
-- =========================================================

-- PURPOSE:
-- Show customers who HAVE placed orders.

-- INNER JOIN returns only matching records
-- from both tables.

SELECT
    c.customer_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;


-- =========================================================
-- 2. LEFT JOIN
-- =========================================================

-- PURPOSE:
-- Show ALL customers.
-- Even customers who have NOT placed an order
-- will appear.

SELECT
    c.customer_name,
    o.order_id,
    o.total_amount
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id;


-- =========================================================
-- 3. SELF JOIN
-- =========================================================

-- PURPOSE:
-- Show employees and their managers.

-- We use the Employees table twice:
--
-- e = Employee
-- m = Manager

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.manager_id = m.employee_id;


-- =========================================================
-- 4. CROSS JOIN
-- =========================================================

-- PURPOSE:
-- Create EVERY possible combination
-- between customers and products.

SELECT
    c.customer_name,
    p.product_name
FROM Customers c
CROSS JOIN Products p;


-- =========================================================
-- 5. COUNT()
-- =========================================================

-- PURPOSE:
-- Count the total number of customers.

SELECT COUNT(*) AS total_customers
FROM Customers;


-- =========================================================
-- 6. SUM()
-- =========================================================

-- PURPOSE:
-- Calculate total sales from all orders.

SELECT SUM(total_amount) AS total_sales
FROM Orders;


-- =========================================================
-- 7. AVG()
-- =========================================================

-- PURPOSE:
-- Calculate average product price.

SELECT AVG(price) AS average_price
FROM Products;


-- =========================================================
-- 8. MAX()
-- =========================================================

-- PURPOSE:
-- Find the most expensive product price.

SELECT MAX(price) AS highest_price
FROM Products;


-- =========================================================
-- 9. MIN()
-- =========================================================

-- PURPOSE:
-- Find the cheapest product price.

SELECT MIN(price) AS lowest_price
FROM Products;


-- =========================================================
-- 10. GROUP BY
-- =========================================================

-- PURPOSE:
-- Calculate how much each customer has spent.

-- GROUP BY creates one group for each customer.

SELECT
    customer_id,
    SUM(total_amount) AS total_spent
FROM Orders
GROUP BY customer_id;


-- =========================================================
-- 11. GROUP BY + JOIN
-- =========================================================

-- PURPOSE:
-- Show customer names and their total spending.

SELECT
    c.customer_name,
    SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;


-- =========================================================
-- 12. GROUP BY + HAVING
-- =========================================================

-- PURPOSE:
-- Find customers who spent MORE THAN ₹50,000.

-- WHERE filters individual rows.
-- HAVING filters groups.

SELECT
    c.customer_name,
    SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING SUM(o.total_amount) > 50000;


-- =========================================================
-- 13. SUBQUERY
-- =========================================================

-- PURPOSE:
-- Find products whose price is greater
-- than the average product price.

-- INNER QUERY:
-- Finds average price.

-- OUTER QUERY:
-- Finds products above that average.

SELECT
    product_name,
    price
FROM Products
WHERE price > (
    SELECT AVG(price)
    FROM Products
);


-- =========================================================
-- 14. SEE THE AVERAGE PRICE
-- =========================================================

-- This is the inner query by itself.

SELECT AVG(price)
FROM Products;


-- =========================================================
-- END OF FILE 3
-- =========================================================