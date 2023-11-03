## String Function
### ASCII
Return the ASCII value of the first character

### CHAR_LENGTH and CHARACTER_LENGTH
Return the length of the String

### CONCAT
Adds two or more expressions together

### CONCAT_WS
``` MySQL
CONCAT_WS(separator, expression1, expression2, expression3);
```

### FORMAT
Format the number as "X,XXX,XXX.XX"
``` MySQL
SELECT FORMAT(250500.5674, 2);
```

### INSERT
``` MySQL
SELECT INSERT("W3Schools.com", 1, 9, "Example");
```
The output value will be "Example.com"

### INSTR
Return the first occurrence of a string in another string
``` MySQL
SELECT INSTR("W3Schools.com", "3") AS MatchPosition;
```
This should return a value of "2"

### LCASE / LOWER / UCASE / UPPER
Use to convert string either to Uppercase or Lowercase

### LEFT/RIGHT
Extract n characters from a string
``` MySQL
SELECT LEFT("SQL Tutorial", 3) AS ExtractString;
```

### LOCATE / POSITION
Returns the positions of the first occurrence of a substring in a string
``` MySQL
SELECT LOCATE("com", "W3Schools.com", 3) AS MatchPosition;

SELECT POSITION("COM" IN "W3Schools.com") AS MatchPosition;
```

### LPAD / RPAD
Left pad or Right pad string to a certain length
``` MySQL
SELECT LPAD("SQL Tutorial", 20, "ABC");
```

### LTRIM / RTRIM / TRIM
Remove Leading spaces from a string

### MID / SUBSTRING / SUBSTR
Extract a substring from a string (start at position 5m extract 3 characters)
``` MySQL
SELECT MID("SQL Tutorial", 5, 3) AS ExtractString;
```

### REPEAT
Repeat string n number of time
``` MySQL
SELECT REPEAT("SQL Tutorial", 3);
```

### REPLACE
``` MySQL
SELECT REPLACE("SQL TUTORIAL", "SQL", "HTML");
```

### REVERSE

### STRCMP

### SUBSTRING_INDEX
``` MySQL
SELECT SUBSTRING_INDEX("www.w3schools.com", ".", 1);
```
The return value should be "www"















