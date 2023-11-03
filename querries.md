# Select
```mySql
SELECT column1, column2
FROM table_name;

SELECT * FROM table_name;

SELECT DISTINCT column1, column2
FROM table_name;

SELECT COUNT(DISTINCT Country) FROM Customers;
```
# Where
```mySql
SELECT column1, column2
FROM table_name
WHERE condition;

-- Text Field
SELECT * FROM Customers
WHERE Country = 'Mexico';

-- Numeric Field
SELECT * FROM Customers
WHERE CustomerID = 1;
```

| Operator | Description       |
| -------- | ----------------- |
| = > < <> | standart operator |    
| BETWEEN  | Between range     |
| LIKE     | Search for pattern|
| IN       | To specify multiple possible values for a column |

```mySql
-- AND
SELECT column1, column2
FROM table_name
WHERE con1 AND con2;

SELECT column1, column2
FROM table_name
WHERE con1 OR con2;

SELECT column1, column2
FROM table_name
WHERE NOT con;
```

# Order By
```mySql
  SELECT column1, column2
  FROM table_name
  ORDER BY column1, column2 ASC; --OR DESC
  -- By default, the value assigned is ASC

  -- Order by several columns
  SELECT * FROM Customers
  ORDER BY Country DESC, CustomerName DESC;
```

# Insert Into
```mySql
  - two possible way
  -- 1. Specify column name
  INSERT INTO table_name(column1, column2)
  VALUES(value1, value2);
  -- 2. Not specifiying column name
  INSERT INTO table_name
  VALUES(value1, value2, value3)
```

# NULL Values
```mySql
  SELECT column_names
  FROM table_name
  WHERE column_name IS NULL;

  SELECT column_names
  FROM table_name
  WHERE column_name IS NOT NULL;
```

# Update
```mySql
  -- Use primary key to change 1 records
  Update Customers
  Set ContactName = 'Luna', City = 'Berlin'
  Where CustomerID = 1;

  -- Otherwise, it is possible to change multiple records
  UPDATE Customers
  SET PostalCode = 00000
  WHERE Country = 'Mexico';
```

# Delete
``` mySql
  Delete from Customers
  Where CustomerName = 'Luna';

  Delete from Customers;
```

# Limit
``` mySql
  SELECT * FROM Customers
  LIMIT 3;

  SELECT * FROM Customers
  LIMIT 3 OFFSET 3;

  SELECT * FROM Customers
  WHERE Country='Germany'
  LIMIT 3;
```

# Min and Max
```MySQL
  SELECT MAX(column_name)
  FROM table_name
  WHERE condition;
```

# Count(), Avg(), and Sum()
```MySQL
SELECT COUNT(ProductID)
FROM Products
WHERE conditions;
```

# Like Operator and Wildcard
```MySQL
SELECT column1, column2
FROM table_name
WHERE column1 LIKE pattern;
```

| Like Operator | Description                           |
| ------------- | ------------------------------------- |
| 'a%'          | Finds value that starts with "a"      |
| '%a'          | Finds value that ends with "a"        |
| '%or%'        | Finds value that has or anywhere      |
| '_r%'         | Finds value that the second value is r|
| 'a_%'         | Finds value that starts with "a" and with a length at least 2 |
| 'a__%'        | Finds value that starts with "a" and with a length at least 3 |
| 'a%o'         | Finds value that starts with "a" and ends with an "o"         |

# In Operator
IN operator is a substitute for multiple OR Operator
```MySQL
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);
```

# Between
The BETWEEN Operator selects values within a given range. The value can be numbers, text, or dates
```MySQL
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);

SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

-- Not Between can also be used
SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
```

# Aliases
Allias for Table
``` MySQL
SELECT CustomerName AS Customer, ContactName AS "Contact Person"
FROM Customers;
```

Allias for Columns
``` MySQL
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;
```

Aliases can be useful when:
1. There are more than one table in a query
2. Functions are used in the query
3. Column names are big and not very readable
4. Two or more columns combined together

# Joins
Use to combine rows from two or more tables, based on a related column between them
``` MySQL
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
```

INNER JOIN: Returns records that have matching values in both tables 
LEFT JOIN : Returns all records from the left table, and the matched records from the right table
RIGHT JOIN: Returns all records from the right table, and the matched records from the left table
CROSS JOIN: Returns all records from both table














































