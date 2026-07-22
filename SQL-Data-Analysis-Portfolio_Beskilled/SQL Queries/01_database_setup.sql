CREATE DATABASE SalesDB;
USE SalesDB;
ALTER TABLE orders
CHANGE total_price sales DECIMAL(10,2);
ALTER TABLE orders
ADD COLUMN cost_price DECIMAL(10,2);
UPDATE orders
SET cost_price = sales * 0.70;
-- Profit 
ALTER TABLE orders
ADD COLUMN profit DECIMAL(10,2);
UPDATE orders
SET profit = sales - cost_price;
-- Profit Margin
ALTER TABLE orders
ADD COLUMN profit_margin DECIMAL(5,2);
UPDATE orders
SET profit_margin = (profit/sales)*100;
-- Year
ALTER TABLE orders
ADD COLUMN order_year INT;
UPDATE orders
SET order_year = YEAR(order_date);
-- Month 
ALTER TABLE orders
ADD COLUMN order_month VARCHAR(20);
UPDATE orders
SET order_month = MONTHNAME(order_date);