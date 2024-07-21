-- SQL script for ex_03.sql
SELECT CONCAT(firstname, ' ', lastname) AS fullname, invoiceid, invoicedate, billingcountry FROM Customer AS C JOIN Invoice AS I ON C.CustomerId = I.CustomerId WHERE C.Country = 'Brazil';