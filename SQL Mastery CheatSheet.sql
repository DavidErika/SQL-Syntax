-- SQL ROADMAP FOR DATA ANALYSIS & DATA SCIENCE
-- 1. BASIC OPERATIONS
-- a. Query data
SELECT *
FROM table_name;

-- 2. MODIFYING DATA
-- a. Inserting data into a table using INSERT Command
INSERT INTO table_name (column1, column2, column3) 
VALUES(1,2,3);

-- b. Updating existing records in a table using UPDATE & SET Commands
UPDATE table_name
SET column_name = "value"
WHERE column_name = "condition";

-- c. deleting existing records in a table using DELETE Command
DELETE column_name FROM table_name WHERE column_name = "value";

-- d. Modifying a table (structure i.e schema) using ALTER command
-- You can add, drop, rename, a column or add and drop constraint
ALTER TABLE table_name
ADD column_name "datatype";

-- 3. FILTERING DATA
-- a. WHERE command is used to a set a condition to the columns to be selected/ records to be selected must fulfill certain criteria
-- b. IN  allows to specify multiple values in a WHERE clause
SELECT column_names
FROM table_name
WHERE column_name IN ("value1", "value2", "value3");

-- c. BETWEEN is used to retrieve values within a certain/given range, inclusive start and end values are included
SELECT * FROM table_name WHERE column_name BETWEEN 10 AND 20;

-- d. LIKE used to search for a specified pattern in a column, Wildcards (%) and (_)
SELECT column1, column2
FROM table_name
WHERE columnN LIKE pattern;

-- e. IS NULL searches for records with no values
SELECT columns_names
FROM table_name
WHERE column_name IS NULL -- You can use IS NOT NULL as well here

-- f. REGEXP is used to perform pattern matching using regular expressions
SELECT column_names
FROM table_name
WHERE column_name REGEXP pattern;

-- g. Logical operators
-- i. AND filters records based on more than one condition
SELECT column_names
FROM table_name
WHERE column_name = "condition1" AND "condition2";

-- ii. OR filters records based on more than one condition but returns if atleast one condition is met
SELECT column_names
FROM table_name
WHERE column_name = "condition1" OR "condition2";

-- iii. NOT gives opposite results
SELECT * FROM table_name
WHERE City NOT LIKE 's%';

-- 4. SORTING AND LIMITING DATA
-- a. ORDER BY is used to arrange data either in ascending or descending order
SELECT column_names
FROM table_names
WHERE column_name = "condition"
ORDER BY column_name

-- b. LIMIT Command is used to limit number of rows to be retrieved

-- 5. COMPLEX QUERIES
-- a. JOINS used to retrieve data from two tables
-- i. INNER JOIN returns values that are common between two tables
SELECT column_names
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

-- ii. OUTER/CROSS JOIN is used to return all values of the two tables
SELECT column_names
FROM table1
CROSS JOIN table2
ON table1.column_name = table2.column_name -- Use common column between the two tables here

-- iii.LEFT JOIN returns values from the first table only
SELECT coolumn_names
FROM table1
LEFT JOIN table2
ON table2.column_name = table2.column;

-- iv. RIGHT JOIN returns values from the second table only
SELECT column_names
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

-- v. Aggregate functions
-- vi. MAX(), MIN(), AVG(), COUNT(), SUM()

-- vii. Grouping data
-- GROUP BY groups rows that have the same values into summary rows / ussually used together with aggregate functions
SELECT column_names
FROM table_name
GROUP BY column_name;

-- viii.  HAVING was added because WHERE clause cannot be used together with aggregate functions
SELECT column_names
FROM table_name
GROUP BY column_name
HAVING AVG(column_name) > "condition"; -- you can use any aggregate function here

-- 6. SUBQUERIES
-- i. Using a subquery inside SELECT statement
SELECT column_names(
      SELECT column_names
      FROM table_name)
FROM table_name;

-- ii. Using a subquery inside FROM statement
SELECT column_name
FROM(
    SELECT column_names
    FROM table1
    INNER JOIN table2
    ON table1.column_name = table2.column_name
    GROUP BY column_name
    ORDER BY column_name);
    
-- iii. Using a subquery inside WHERE clause
SELECT column_names
FROM table_name
WHERE column_name IN(
                     SELECT column_names
                     FROM table_name
                     WHERE column_name = "condition");
                     

-- iv. EXISTS Used to test existence of any record in a subquery
SELECT column_name
FROM table_name
WHERE EXISTS(
             SELECT column_name
             FROM table_name
             WHERE "condition");

-- 7. VIEWS
-- A view is a virtual table that is based on the result of a query
CREATE VIEW view_name AS
SELECT column_names
FROM table_name
WHERE "condition";

/*
Advantages of Views
1. Security - Allows users access rows and columns they are authorized to access.alter
2. Views can be reused in multiple queries
3. Simplification 

Types of Views
1. Simple views - Based on a single table, they are updatable.
2. Complex views - Based on multiple tables - may not be updatable
3. Materialized views - store result set physically.alter
 */

-- 8. STORED PROCEDURES AND FUNCTIONS
-- STORED PROCUDURES are prepared sql code that can be saved and reused multiple times, used on repetitive sql code
-- you can pass parameters into a stored procedure so that it can act on the parameter

/*CREATE PROCEDURE procedure_name
AS
SELECT column_name FROM table_name
GO;

EXEC procedure_name executing a stored procedure 
*/

-- 9. TRIGGERS AND EVENTS
-- These are mechanisms used to automated actions in response to certain conditions or change in database
/* 
Types of Triggers 
1.Before triggers - Executes before triggering event
2.After trigger - Executes after triggering event
3.Instead trigger

Use-cases
1. Enforce data integrity (prevent invalid data from being inserted)
2. Updating audit logs automatically
3. Cascading actions (deleting related records in another table)
*/

CREATE TRIGGER trigger_name
AFTER UPDATE ON table_name
FOR EACH ROW
BEGIN 
     SET NEW.column_name = "condition"
END;

-- Events are scheduled action that runs automatically at specified intervals
CREATE EVENT event_name
ON SCHEDULE  EVERY 1 DAY
DO
BEGIN
-- Command to perform backup
INSERT INTO backup_up_table SELECT * FROM main_table
END;

/*
Triggers are event-driven and respond to data manipulation while Events are time-driven and execute at scheduled intervals
Enhance automation; Improves data management within database.
 */




       







  











