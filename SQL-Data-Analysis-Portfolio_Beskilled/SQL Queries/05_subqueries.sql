-- Subqueries
-- Customers above average sales
SELECT customer_name,
sales
FROM orders
WHERE sales>(
SELECT AVG(sales)
FROM orders
);
-- Products with maximum sales
SELECT product_name,
sales
FROM orders
WHERE sales=(
SELECT MAX(sales)
FROM orders
);