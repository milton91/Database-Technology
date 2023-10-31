# Database-Technology
## 1NF

You can assign the data in any order. There is no right order.

However, suppose we need to display the data of employees from shortest to tallest. The order of employees now also conveys meaning.

### First violation:
| name    |
| ------- |
| Abbe    |
| charles |
| John    |

Using row order to convey information. Solution: Be explicit

| name    | height (cm) |
| ------- | ----------- |
| Abbe    | 140         |
| charles | 190         |
| John    | 180         |

### Second Violation
Mixing the data type within a single column

| name    | height (cm)                   |
| ------- | ----------------------------- |
| Abbe    | somewhere between 100 and 200 |        |
| charles | 190                           |
| John    | 180                           |

### Third Violation
Designing a table without a primary key. Primary key is a column or combination of columns that uniquely identify a row in a table.

With primary key, it will prevents stuff like this

| name    | height (cm) |
| ------- | ----------- |
| Abbe    | 140         |
| charles | 190         |
| John    | 180         |
| Abbe    | 130         |

### Fourth Violation
Storing a repeating group of data items on a single row violates First Normal Form

Player inventory
| Player_ID | Item_type | Item_quantity |
| --------- | --------- | ------------- |
| BigMoist  | rings     | 2             |
| BigMoist  | spell     | 10            |
| Hugbees   | gold      | 25677         |

The primary key is the combination of Player_ID and Item_Type

## 2NF
### Definition
Second Normal Form is about how table non-key columns relate to key columns

Each non-key attribute must depend on the entire primary key

| Player_ID | Item_type | Item_quantity | Player_rating |
| --------- | --------- | ------------- | ------------- |
| BigMoist  | rings     | 2             | Intermediate  |
| BigMoist  | spell     | 10            | Intermediate  |
| Hugbees   | gold      | 25677         | Beginner      |

Non-key attributes: Item_quantity, Player_rating


Does item_quantity depend on all primary key? YES

{Player_ID, Item Type} -> {Item_Quantity}


Does Player_Rating depend on all primary key? NO

{Player_ID} -> {Player_Quantity}

Player
| Player_ID | Player_Rating |
| ----------|---------------|
| BigMoist  | God           |

## 3rd Normal Form
Every non-key attribute in a table should depend on the key, the whole key, and nothing but the key

## Boyce-Codd Normal Form
Every attribute in a table should depend on the key, the whole key, and nothing but the key















