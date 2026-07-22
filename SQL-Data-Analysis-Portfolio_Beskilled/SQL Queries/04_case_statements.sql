-- CASE Statement
-- Customer Type
SELECT customer_name,
sales,
CASE
WHEN sales>=10000 THEN 'Premium'
WHEN sales>=5000 THEN 'Regular'
ELSE 'Basic'
END AS Customer_Type
FROM orders;
-- Profit Status
SELECT customer_name,
profit,
CASE
WHEN profit>5000 THEN 'High Profit'
WHEN profit>2000 THEN 'Medium Profit'
ELSE 'Low Profit'
END AS Profit_Status
FROM orders;
