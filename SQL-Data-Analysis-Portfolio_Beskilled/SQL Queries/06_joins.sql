-- Self Join
SELECT
A.customer_name,
A.region,
B.category
FROM orders A
JOIN orders B
ON A.order_id=B.order_id;

-- Customer Table 
CREATE TABLE customers AS
SELECT DISTINCT
customer_name,
region
FROM orders;
-- Inner Join 
SELECT
o.order_id,
o.customer_name,
c.region,
o.sales
FROM orders o
INNER JOIN customers c
ON o.customer_name=c.customer_name;
