SELECT *
FROM orders;
-- customer and sales
SELECT customer_name,
sales
FROM orders;
-- Orders from North Region
SELECT *
FROM orders
WHERE region='North';
-- Electronics only
SELECT *
FROM orders
WHERE category='Electronics';
-- Sales greater than 10000
SELECT *
FROM orders
WHERE sales>10000;