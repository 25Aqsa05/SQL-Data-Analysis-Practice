-- Aggregate Functions
-- Total Sales
SELECT SUM(sales) AS Total_Sales
FROM orders;
-- Average Sales
SELECT AVG(sales) AS Average_Sales
FROM orders;
-- Number of Orders
SELECT COUNT(*) AS Total_Orders
FROM orders;
-- Total Profit
SELECT SUM(profit) AS Total_Profit
FROM orders;
-- Average Profit Margin
SELECT AVG(profit_margin) AS Avg_Profit_Margin
FROM orders;

-- GROUP BY
-- Sales by Category
SELECT category,
SUM(sales) AS Total_Sales
FROM orders
GROUP BY category;
-- Profit by Region
SELECT region,
SUM(profit) AS Total_Profit
FROM orders
GROUP BY region;
-- Orders by Month
SELECT order_month,
COUNT(*) AS Orders
FROM orders
GROUP BY order_month;

-- ORDER BY
-- Highest Sales
SELECT *
FROM orders
ORDER BY sales DESC;
-- Lowest Profit
SELECT *
FROM orders
ORDER BY profit ASC;
-- Top 10 Sales
SELECT *
FROM orders
ORDER BY sales DESC
LIMIT 10;

