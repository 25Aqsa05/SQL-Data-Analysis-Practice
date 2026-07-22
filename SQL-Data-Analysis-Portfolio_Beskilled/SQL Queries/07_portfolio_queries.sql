-- Top 10 Customers
SELECT customer_name,
SUM(sales) AS Total_Sales
FROM orders
GROUP BY customer_name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Best Selling Products
SELECT product_name,
SUM(quantity) AS Total_Quantity
FROM orders
GROUP BY product_name
ORDER BY Total_Quantity DESC;

-- Sales by Region
SELECT region,
SUM(sales) AS Total_Sales
FROM orders
GROUP BY region
ORDER BY Total_Sales DESC;

-- Average Order Value
SELECT AVG(sales) AS Average_Order_Value
FROM orders;

-- Category-wise Profit
SELECT category,
SUM(profit) AS Total_Profit
FROM orders
GROUP BY category;