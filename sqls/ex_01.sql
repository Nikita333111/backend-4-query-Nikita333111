-- SQL script for ex_01.sql
SELECT CONCAT(firstname, ' ', lastname) AS fullname, customerid, country FROM Customer WHERE country != 'USA';