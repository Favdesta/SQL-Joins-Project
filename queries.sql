-- Using the bookstore database
USE bookstore;

-- INNER JOIN EXAMPLES
-- Get the list of items ordered by customers, showing item ID and customer name
-- Only shows matches where both orderinfo and customer records exist
SELECT orderinfo.itemid, customer.customername
FROM orderinfo AS o
INNER JOIN customer AS c
ON o.customerid = c.customerid;

-- Get the list of books and their authors
-- Shows only books that have an author assigned
SELECT i.booktitle, a.authorname
FROM item AS i
INNER JOIN author AS a
ON i.authorid = a.authorid;

-- LEFT JOIN EXAMPLES
-- Get all books and their authors (if they exist)
-- Shows ALL books, even if they don't have an author assigned
SELECT i.booktitle, a.authorname
FROM item AS i
LEFT JOIN author AS a
ON i.authorid = authorid
ORDER BY i.booktitle;

-- Get all customers and their orders (if they exist)
-- Shows ALL customers, even those who haven't made any orders
SELECT c.customername, o.itemid
FROM customer AS c
LEFT JOIN orderinfo AS o
ON c.customerid = o.customerid
ORDER BY c.customername;

-- RIGHT JOIN EXAMPLES
-- Get all customers and their orders (if they exist)
-- Shows ALL customers, even those without orders (similar to previous LEFT JOIN but reversed)
SELECT o.itemid, c.customername
FROM orderinfo AS o
RIGHT JOIN customer AS c
ON o.customerid = c.customerid
ORDER BY c.customername;

-- Get all books and their authors (if they exist)
-- Shows ALL books, even those without authors (similar to previous LEFT JOIN but reversed)
SELECT a.authorname, i.booktitle
FROM author AS a
RIGHT JOIN item AS i
ON a.authorid = i.authorid
ORDER BY a.authorname;

-- SELF-JOIN AND CROSS JOIN EXAMPLES
-- Self-join: Get employees and their managers
-- Joins the employees table with itself to show the relationship between employees and managers
SELECT  e.firstname AS EmployeeName, em.firstname AS ManagerName
FROM employees e
INNER JOIN employees em
ON e.managerid = em.managerid;

-- Cross join: Get all possible combinations of items and authors
-- Creates a Cartesian product between items and authors tables
SELECT *
FROM item
CROSS JOIN author;

-- Simple inner join between authors and items
-- Shows only books with assigned authors
SELECT a.authorname, i.booktitle
FROM author AS a
INNER JOIN item AS i 
ON a.authorid = i.authorid;

-- UNION AND UNION ALL EXAMPLES
-- Display all supplier data
SELECT * FROM supplier;

-- Combine unique cities from both customer and supplier tables
-- UNION removes duplicates
SELECT city FROM customer
UNION
SELECT city FROM supplier
ORDER BY city;

-- Combine all cities from both customer and supplier tables
-- UNION ALL keeps duplicates
SELECT city FROM customer
UNION ALL
SELECT city FROM supplier
ORDER BY city;

-- Combine customer names and employee first names
-- Shows unique names from both tables
SELECT customername FROM customer
UNION 
SELECT firstname FROM employees
ORDER BY customername;
