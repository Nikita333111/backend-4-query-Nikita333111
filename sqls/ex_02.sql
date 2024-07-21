-- SQL script for ex_02.sql
SELECT CONCAT(firstname, ' ', lastname) AS fullname FROM Customer WHERE country = 'Brazil';