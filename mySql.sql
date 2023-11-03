-- Order By

  SELECT column1, column2
  FROM table_name
  ORDER BY column1, column2 ASC; --OR DESC
  -- By default, the value assigned is ASC

  -- Order by several columns
  SELECT * FROM Customers
  ORDER BY Country DESC, CustomerName DESC;

-- Insert Into
  -- two possible way
  -- 1. Specify column name
  INSERT INTO table_name(column1, column2)
  VALUES(value1, value2);
  -- 2. Not specifiying column name
  INSERT INTO table_name
  VALUES(value1, value2, value3)

-- NULL Values
  SELECT column_names
  FROM table_name
  WHERE column_name IS NULL;

  SELECT column_names
  FROM table_name
  WHERE column_name IS NOT NULL;

-- Update
  -- Use primary key to change 1 records
  Update Customers
  Set ContactName = 'Luna', City = 'Berlin'
  Where CustomerID = 1;

  -- Otherwise, it is possible to change multiple records
  UPDATE Customers
  SET PostalCode = 00000
  WHERE Country = 'Mexico';

-- Delete
  Delete from Customers
  Where CustomerName = 'Luna';

  Delete from Customers;

-- Limit
  SELECT * FROM Customers
  LIMIT 3;

  SELECT * FROM Customers
  LIMIT 3 OFFSET 3;

  SELECT * FROM Customers
  WHERE Country='Germany'
  LIMIT 3;

-- Min and Max
  SELECT MAX(column_name)
  FROM table_name
  WHERE condition;


















