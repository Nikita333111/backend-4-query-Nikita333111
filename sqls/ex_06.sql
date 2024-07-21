-- SQL script for ex_06.sql
SELECT I.InvoiceId, CONCAT(E.FirstName, ' ', E.LastName) AS fullname FROM Invoice AS I JOIN Customer AS C ON I.CustomerId = C.CustomerId JOIN Employee AS E ON E.EmployeeId = C.SupportRepId WHERE E.Title LIKE '%sales%';