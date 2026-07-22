-- ==========================================
-- File: 02_basic_queries.sql
-- Description:
-- This file contains basic SQL queries used
-- to retrieve, filter, sort, and limit data
-- from the orders table.
-- ==========================================

SELECT * FROM orders;

SELECT customer_name, sales
FROM orders;

SELECT *
FROM orders
WHERE sales > 500;

SELECT *
FROM orders
ORDER BY sales DESC;
