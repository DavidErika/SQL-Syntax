# SQL-Syntax : SQL Roadmap for Data Analysis & Data Science
This README file provides a detailed breakdown of various SQL operations for data analysis and data science. The roadmap is designed to cover all essential SQL concepts, from basic operations like querying data to more advanced topics like triggers and events. Each section focuses on a specific set of tasks that will help you manipulate, filter, and retrieve data efficiently.

## TABLE OF CONTENTS
1. [Basic Operations](#Basic-Operations)
    -[Querying Data](#Querying-Data)
3. [Modifying data](#Modifying-data)
    -[Inserting Data](#Inserting-Data)
    -[Updating Data](#Updating-Data)
    -[Deleting Data](#Deleting-Data)
    -[Altering Table Structuring](#Altering-Table-Structure)
5. [Filtering data](#Filtering-data)
    -[Filtering with WHERE](#Filtering-with-WHERE)
    -[Using IN](#Using-IN)
    -[Using BETWEEN](#Using-BETWEEN)
    -[Using LIKE](#Using-LIKE)
    -[Checking for NLL Values](#Checking-for-NULL-Values)
    -[Using REGEXP](#Using-REGEXP)
    -[Logical Operators(#Logical-Operators)
7. [Sorting and Limiting Data](#Sorting-and-Limiting-Data)
    -[Sorting with ORDER BY](#Sorting-with-ORDER-BY)
    -[Limiting Rows with LIMIT](#Limiting-Rows-with-LIMIT)
9. [Complex Queries](#Complex-Queries)
    -[Using JOIN Clauses](#Using-JOIN-Clauses)
    -[Aggregate Functions](#Aggreagate-Functions)
    -[Grouping Data](#Grouping-Data)
    -[Filtering Grouped Data with HAVING](#Filtering-Grouped-Data-with-HAVING)
11. [Subqueries](#Subqueries)
    -[Subquery in SELECT Statement](#Subquery-in-SELECT-Statement)
    -[Subquery in FROM Statement](#Subquery-in-FROM-Statement)
    -[Subquery in WHERE Clause](#Subquery-in-WHERE-Clause)
    -[Using EXISTS](#Using-EXISTS)
13. [Views](#Views)
    -[Types of Views](#Types-of-Views)
15. [Stored Procedures and Functions](#Stored-Procedures-and-Functions)
16. [Triggers and Events](#Triggers-and-Events)
    -[Types of Triggers](#Types-of-Triggers)
    -[Events](#Events)
    [CONCLUSIONS](#CONCLUSIONS)

## Basic Operations
### Querying Data
This section covers how to retrieve data from a table.
```
SELECT * FROM table_name;
```

##  Modifying Data
### Inserting Data
Insert new records into a table.
```
INSERT INTO table_name (column1, column2, column3) 
VALUES(1, 2, 3);

```
### Updating Data
Update existing records in a table.
```
UPDATE table_name
SET column_name = "value"
WHERE column_name = "condition";

```
### Deleting Data
Delete records from a table based on a condition.
```
DELETE column_name FROM table_name WHERE column_name = "value";

```
### Altering Table Structure
Modify the schema of a table, such as adding or removing columns.
```
ALTER TABLE table_name
ADD column_name "datatype";

```

## Filtering Data
### Filtering with WHERE
Retrieve records that fulfill certain criteria.
```
SELECT column_names
FROM table_name
WHERE column_name = "condition";

```
### Using IN
Specify multiple values in a WHERE clause.
```
SELECT column_names
FROM table_name
WHERE column_name IN ("value1", "value2", "value3");

```
### Using BETWEEN
Retrieve values within a specified range.
```
SELECT * FROM table_name 
WHERE column_name BETWEEN 10 AND 20;

```
### Using LIKE
Search for patterns in text columns using wildcards % and _.
```
SELECT column1, column2
FROM table_name
WHERE columnN LIKE pattern;

```
###  Checking for NULL Values
Find records with missing values
```
SELECT column_names
FROM table_name
WHERE column_name IS NULL;

```
### Using REGEXP
Perform pattern matching using regular expressions.
```
SELECT column_names
FROM table_name
WHERE column_name REGEXP pattern;

```
### Logical Operators
a. AND: Filters records based on multiple conditions.
b. OR: Filters records based on at least one condition.
c. NOT: Excludes results that match a condition.

## Sorting and Limiting Data
### Sorting with ORDER BY
Sort data in ascending or descending order.
```
SELECT column_names
FROM table_name
ORDER BY column_name;

```
### Limiting Rows with LIMIT
Restrict the number of rows returned.
```
SELECT column_names
FROM table_name
LIMIT 10;

```

## Complex Queries
### Using JOIN Clauses
a. INNER JOIN: Returns rows with matching data in both tables.
b. LEFT JOIN: Returns all rows from the left table, even if there are no matches in the right table.
c. RIGHT JOIN: Returns all rows from the right table, even if there are no matches in the left table.

### Aggregate Functions
MAX(), MIN(), AVG(), COUNT(), SUM(): Used to perform calculations on a set of values.

### Grouping Data
Group rows that have the same values into summary rows.
```
SELECT column_names
FROM table_name
GROUP BY column_name;

```
### Filtering Grouped Data with HAVING
Filter aggregated results, since WHERE cannot be used with aggregate functions.
```
SELECT column_names
FROM table_name
GROUP BY column_name
HAVING AVG(column_name) > "condition";

```
## Subqueries
### Subquery in SELECT Statement
Use a subquery within a SELECT statement.
```
SELECT column_names(SELECT column_names FROM table_name)
FROM table_name;

```
### Subquery in FROM Statement
A subquery can be used as a derived table within the FROM clause.
```
SELECT column_name
FROM (SELECT column_names FROM table_name);

```
### Subquery in WHERE Clause
Subqueries can help filter rows in the WHERE clause.
```
SELECT column_names
FROM table_name
WHERE column_name IN (
   SELECT column_names
   FROM table_name
   WHERE column_name = "condition"
);

```
### Using EXISTS
Check for the existence of rows in a subquery.
```
SELECT column_name
FROM table_name
WHERE EXISTS (
   SELECT column_name
   FROM table_name
   WHERE "condition"
);

```
## Views
Views are virtual tables based on the result of an SQL query.
```
CREATE VIEW view_name AS
SELECT column_names
FROM table_name
WHERE "condition";

```
### Types of Views
a. Simple Views: Based on a single table, can be updated.
b. Complex Views: Based on multiple tables, may not be updatable.
c. Materialized Views: Physically store result sets.

## Stored Procedures and Functions
Stored procedures allow you to encapsulate and reuse SQL code.
```
CREATE PROCEDURE procedure_name AS
SELECT column_name FROM table_name;
GO;

```
Execute a stored procedure using:
```
EXEC procedure_name;

```

## Triggers and Events
Triggers automatically execute in response to specific database events.
```
CREATE TRIGGER trigger_name
AFTER UPDATE ON table_name
FOR EACH ROW
BEGIN 
   SET NEW.column_name = "condition";
END;

```
### Types of Triggers
a. Before Triggers: Executes before the triggering event.
b. After Triggers: Executes after the triggering event.
c. Instead of Triggers: Executes instead of the triggering event.
### Events
Scheduled tasks that run at specific intervals.
```
CREATE EVENT event_name
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
   INSERT INTO backup_table SELECT * FROM main_table;
END;

```
### Advantages of Automation with Triggers and Events:
   -Enforces data integrity.
   -Automates tasks like auditing and backups.
   -Improves database management by triggering actions based on time or conditions.

## CONCLUSIONS



