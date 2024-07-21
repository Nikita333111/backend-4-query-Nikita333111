-- SQL script for ex_04.sql
SELECT CONCAT(firstname, ' ', lastname) AS fullname FROM Employee AS E WHERE title LIKE '%sales%';