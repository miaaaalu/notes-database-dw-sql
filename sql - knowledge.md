# JOIN
### **What is an SQL `JOIN`, and when do you need it?**

- `JOIN` is an SQL clause used to connect two or more tables and get the result that is a combination of data from all the tables. 
- The joining is done via the `common column` these tables share, with this column serving as a bridge between the tables.

### **INNER JOIN**
When condition met, it
* Return only the matching records from the joined tables

###  **LEFT JOIN**
When condition met, it
* Returns all the data from `left table`  
* Return matching records from right table
* If there are no matching records on right table,  it will return NULL values.

### **RIGHT JOIN**
When condition met, it
* Returns all the data from `Right table` 
* Return mathcing records from the left table
* If there are no matching records on left table, then it will return NULL values.

### **FULL JOIN**
When condition met, it
* Returns all the data from `left talbe ` and `Right table` 
* If there are no matching records then it will return NULL values.

### **SELF JOIN**
* join of a table to itself

### **CROSSS JOIN**
* returns the `Cartesian product` of rows from the tables in the join. In other words, it return each row from the first table with each row from the second table.

# Common Table Expression (CTE)
### **What is Common Table Expression** 
- CTE 是一个query的结果集合，它临时存在, 并且仅在更大查询的背景中使用。
- CTE 与派生表（derived table）非常相似
- CTE的结果不存储，仅在查询期间存在。

### **How are CTE helpful?**
- improves readability and ease in maintenance of complex queries and sub-queries.

### **What is the difference between Common CTE and SubQuery?**
- CTEs are reusable
    - they can be used multiple times in a query
- CTEs can be more readable
    - write less code using CTEs

### **Is Nested CTE and Recursive CTE allowed in SQL?**
Yes

### **Can you use a CTE in the WHERE clause?**
NO

### **Are duplicate column names allowed in the CTE?**
Duplicate names within a single CTE definition are not allowed. The number of column names specified must match the number of columns in the result set of the CTE_query_definition.


### **Can you DELETE the records from the CTE?**
We can DELETE from some sql server version. 
```sql
WITH RemoveWinter AS(
  SELECT *
  FROM tbAlmondData
  WHERE MONTH(AlmondDate) IN (12,1,2)
)
DELETE
FROM RemoveWinter
```

# Common SQL Interview Questions 
### **1. What are the different subsets of SQL?**
- DDL – It allows you to perform various operations on the database such as `CREATE`, `ALTER`, and `DELETE` objects.
- DML – It allows you to access and manipulate data. It helps you to seletct,insert, update, delete and retrieve data from the database.
- DCL – It allows you to control access to the database. Example – Grant, Revoke access permissions.

### **2. List the different types of relationships in SQL**
- One-to-One 
- One-to-Many and Many-to-One 
- Many-to-Many

### **3. create empty tables with the same structure as another table?**
Using the `INTO operator` to fetch the records of one table into a new table while setting a `WHERE` clause to false for all entries, it is possible to create empty tables with the same structure.
```sql
Select * 
Into <DestinationTableName> 
From <SourceTableName> 
Where 1 = 2
```

### 4. `NVL()`
`NVL` lets you replace null value with a string in the results of a query
```sql
SELECT
    order_id,
    NVL(first_name, 'Not Assigned')
FROM orders
```

### **5. Explain character-manipulation functions**
Character-manipulation functions are used to extract, change, format, or alter in some way a character string.

`CONCAT`: Joins two values 
```sql
SELECT CONCAT(first_name,last_name) AS full_name
FROM employees
```

`SUBSTR`: Extract substring 
```sql
-- SUBSTRING(input_string, start, length);
SELECT 
    SUBSTRING('SQL Server SUBSTRING', 5, 6) AS new_column
FROM 
Table_1;

--RESULT
Server
```

`LENGTH`: get string length
```sql
SELECT 
    LENGTH(first_name) AS len
FROM
employees
```

`INSTR`: Finds the numeric position of string
```sql
SELECT MovieName, INSTR(MovieName,'Girl') as Position
FROM Actors;
```
![](https://cdn.educba.com/academy/wp-content/uploads/2020/04/SQL-INSTR-1.4.png.webp)

`LPAD`,`RPAD`: Pads the left side of a character string, resulting in a right-justified value
```sql
-- LPAD(str, len, padstr)
SELECT LPAD("geeksforgeeks", 20, "*") 
AS LeftPaddedString;

-- RESULT
*******geeksforgeeks
```

`TRIM`: Removes characters from a string (beginning, end,or both)
```sql
-- beginning
SELECT TRIM(LEADING 'a' FROM 'abcba')
FROM DUAL
-- ending
SELECT TRIM(TRAILING 'a' FROM 'abcba')
FROM DUAL
-- both
SELECT TRIM(BOTH 'a' FROM 'abcba')
FROM DUAL
```

`REPLACE`: Replaces a sequence of characters in a string with another set of characters
```sql
SELECT REPLACE ('string1', 'string_to_replace', 'replacement_string')
FROM TABLE_1
```

### **difference between the RANK() and DENSE_RANK() functions**
排序相同时:
- `rank()`, 排名会重复，总数不变，即会出现1、1、3这样的排序结果
- `dense_rank()`, 排名会重复，总数会减少，即会出现1、1、2这样的排序结果
- `row_number()`, 排名不会重复，会根据顺序排序排列。

### **6. What is a UNIQUE constraint?**
The `UNIQUE` constraint ensures that all values in a column are different.
```sql
CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
```

### **7. Tempory Table** 
在实时方案中，如果用户对表具有只读访问权限，并且必须操纵其中的某些数据。在当前会话中使用临时表时是很有用的。
```sql
--1
CREATE TABLE #TempPersonTable (
    PersonID int PRIMARY KEY IDENTITY(1,1),
    LastName varchar(255),
    FirstName varchar(255),
    City varchar(255)
)

--2
CREATE TEMPORARY TABLE table_name SELECT column(s) FROM existing_table;
```
### **8. What are Tables and Fields?**
Table: a collection of data stored rows and columns 
Fields: columns
Records: rows 

###  **9. Constraints in SQL**
- NOT NULL - Restricts NULL value from being inserted into a column.
- CHECK - Verifies that all values in a field satisfy a condition.
- DEFAULT - Automatically assigns a default value if no value has been specified for the field.
- UNIQUE: ensures that all values in a column are different.
- INDEX - Indexes a field providing faster retrieval of records.
- PRIMARY KEY - Uniquely identifies each record in a table.
- FOREIGN KEY - Ensures referential integrity for a record in another table.

### **Index**
在关系数据库中，如果有上万甚至上亿条记录，在查找记录的时候，想要获得非常快的速度，就需要使用索引。

通过使用索引，可以让数据库系统不必扫描整个表，而是直接定位到符合条件的记录，这样就大大加快了查询速度。
- 通过对数据库表创建索引，可以提高查询速度。
- 通过创建唯一索引，可以保证某一列的值具有唯一性。

### **UNION, INTERSECT MINUS**
- `UNION`: 取sql的并集，自动去重
- `UNION ALL`: 取sql的并集，不去重
- `INTERSECT`: 取两者交集
- `MINUS`: 取（前者-后者）剩余

### **How to remove duplicate rows in SQL?**
```sql
-- 1. Delete all duplicate rows  
DELETE FROM table WHERE ID IN (
SELECT 
ID, COUNT(ID) 
FROM   table
GROUP BY  ID
HAVING 
COUNT (ID) > 1); 

-- 2. Delete duplicated row, keep a uniqui reocrds
WITH cte AS (
    SELECT ROW_NUMBER() OVER (PARTITION BY 'duplicate_column', ORDER BY 'duplicate_column' ) row_num
    FROM smapletable
)
DELETE FROM cte
WHERE row_num > 1;
```
# Common Function 
- 根号 SQRT()
- 平方 POWER()
- 绝对值 ABS()
- 连接 CONCAT
- 提取 SUBSTR
- Round down: FLOOR()
- Round up: CEILING()