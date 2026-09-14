-- =========================================================
-- E-COMMERCE SQL PROJECT
-- FILE 4: DCL + TCL COMMANDS
-- =========================================================

USE ecommerce_db;


-- =========================================================
-- DCL = DATA CONTROL LANGUAGE
-- =========================================================
--
-- DCL controls USER PERMISSIONS.
--
-- Main commands:
--
-- GRANT  = Give permission
-- REVOKE = Remove permission
--
-- =========================================================


-- =========================================================
-- 1. CREATE DATABASE USER
-- =========================================================

-- Creates a user called sales_user.

CREATE USER 'sales_user'@'localhost'
IDENTIFIED BY 'password123';


-- =========================================================
-- 2. GRANT PERMISSION
-- =========================================================

-- Give sales_user permission to:
--
-- SELECT = read data
-- INSERT = add data

GRANT SELECT, INSERT
ON ecommerce_db.*
TO 'sales_user'@'localhost';


-- =========================================================
-- 3. REVOKE PERMISSION
-- =========================================================

-- Remove INSERT permission
-- from sales_user.

REVOKE INSERT
ON ecommerce_db.*
FROM 'sales_user'@'localhost';


-- =========================================================
-- 4. SHOW USER PERMISSIONS
-- =========================================================

-- Display permissions assigned to sales_user.

SHOW GRANTS FOR 'sales_user'@'localhost';


-- =========================================================
-- TCL = TRANSACTION CONTROL LANGUAGE
-- =========================================================
--
-- TCL controls transactions.
--
-- START TRANSACTION = Start a transaction
-- COMMIT            = Permanently save changes
-- ROLLBACK          = Undo changes
-- SAVEPOINT         = Create a point to return to
--
-- =========================================================


-- =========================================================
-- 5. START TRANSACTION + COMMIT
-- =========================================================

-- Start a transaction.

START TRANSACTION;


-- Reduce Laptop stock by 5.

UPDATE Products
SET stock = stock - 5
WHERE product_id = 1;


-- Reduce Smartphone stock by 2.

UPDATE Products
SET stock = stock - 2
WHERE product_id = 2;


-- Save both changes permanently.

COMMIT;


-- =========================================================
-- 6. ROLLBACK
-- =========================================================

-- Start another transaction.

START TRANSACTION;


-- Change Laptop price.

UPDATE Products
SET price = 50000
WHERE product_id = 1;


-- Undo the above change.

ROLLBACK;


-- The Laptop price returns to its previous value.


-- =========================================================
-- 7. SAVEPOINT
-- =========================================================

-- Start transaction.

START TRANSACTION;


-- Increase Laptop price by ₹1,000.

UPDATE Products
SET price = price + 1000
WHERE product_id = 1;


-- Create a SAVEPOINT.
-- We can return to this point later.

SAVEPOINT price_update;


-- Reduce Laptop stock by 10.

UPDATE Products
SET stock = stock - 10
WHERE product_id = 1;


-- Undo changes made AFTER the savepoint.

ROLLBACK TO price_update;


-- Save the remaining transaction.

COMMIT;


-- =========================================================
-- END OF FILE 4
-- =========================================================