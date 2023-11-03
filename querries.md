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













