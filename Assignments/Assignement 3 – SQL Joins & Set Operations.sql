 CREATE TABLE Employees (
   EmpID INT PRIMARY KEY,
   EmpName VARCHAR(50),
   DepartmentID INT
 );
 INSERT INTO Employees (EmpID, EmpName, DepartmentID) VALUES
   (1, 'Alice',   101),
   (2, 'Bob', 	102),
   (3, 'Charlie', 103),
   (4, 'Diana',   NULL),
   (5, 'Eve', 	101);

   --1b
    CREATE TABLE Departments (
   DepartmentID INT PRIMARY KEY,
   DeptName VARCHAR(50),
   Location VARCHAR(50)
 );

 INSERT INTO Departments (DepartmentID, DeptName, Location) VALUES
   (101, 'HR',   	'New York'),
   (102, 'IT',   	'San Francisco'),
   (103, 'Finance',  'Chicago'),
   (104, 'Sales',	'Boston');

   --2a
   SELECT E.EmpID,E.EmpName,D.DeptName
FROM Employees E
INNER JOIN Departments D
ON E.DepartmentID=D.DepartmentID;

--2b
SELECT E.EmpID,E.EmpName,D.DeptName
FROM Employees E
LEFT JOIN Departments D
ON E.DepartmentID=D.DepartmentID;

--2c
SELECT D.DepartmentID,D.DeptName,E.EmpName
FROM Employees E
RIGHT JOIN Departments D
ON E.DepartmentID=D.DepartmentID;

--2d
SELECT E.EmpID,E.EmpName,D.DeptName
FROM Employees E
FULL OUTER JOIN Departments D
ON E.DepartmentID=D.DepartmentID;

--2e
SELECT E.EmpName,D.DeptName
FROM Employees E
CROSS JOIN Departments D;

--2f
SELECT EmpName AS Name
FROM Employees

UNION ALL

SELECT DeptName
FROM Departments;

--2g
SELECT DepartmentID
FROM Employees
INTERSECT
SELECT DepartmentID
FROM Departments;

--2h
SELECT DepartmentID
FROM Departments
EXCEPT
SELECT DepartmentID
FROM Employees;

