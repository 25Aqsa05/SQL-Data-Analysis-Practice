CREATE TABLE Products (
   ProductID INT PRIMARY KEY,
   ProductName VARCHAR(50),
   Category VARCHAR(50),
   Price DECIMAL(10,2),
   Stock INT
 );

  INSERT INTO Products (ProductID, ProductName, Category, Price, Stock) VALUES
   (1, 'Laptop',	'Electronics', 800.00,  50),
   (2, 'Smartphone','Electronics', 600.00,  30),
   (3, 'Desk Chair','Furniture',   120.00, 100),
   (4, 'Table', 	'Furniture',   200.00,  20),
   (5, 'Notebook',  'Stationery',	5.00, 500),
   (6, 'Pen',   	'Stationery',	2.00,1000);

   SELECT * FROM Products;
   --2a
   Select *
   From Products 
   Where Category in('Electronics','Furniture');

   --2b
   select *
   from Products
   where Price between 100 and 800;

   --2c
   Select *
   from Products
   where Stock BETWEEN 50 AND 500;

   --2d
    Select *
   from Products
   WHERE ProductName LIKE '%Pen%';

   --2e
   Select *
   from Products
   WHERE ProductName LIKE 'S%';

   --2f
   Select *
   from Products
   WHERE Category IN ('Stationery','Furniture')
   AND Price BETWEEN 100 AND 300

   --2g
   Select *
   from Products
   WHERE Price BETWEEN 1 AND 10
   AND ProductName LIKE '%o%'





