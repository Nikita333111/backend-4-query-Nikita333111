-- SQL script for ex_21.sql
SELECT COUNT(c.CustomerId) AS customerNumber,
       CONCAT(e.FirstName, ' ', e.LastName) AS saleManager
FROM
    Employee e
        JOIN
    Customer c
    ON
        e.EmployeeId = c.SupportRepId
GROUP BY c.SupportRepId;