-- SQL script for ex_20.sql
SELECT max(totalSales) AS maxTotalSales, employee FROM (SELECT
    SUM(i.Total) AS totalSales,
    CONCAT(e.FirstName, ' ', e.LastName) AS employee
FROM
    Invoice i
JOIN
    Customer c
ON
    i.CustomerId = c.CustomerId
JOIN
    Employee e
ON
    c.SupportRepId = e.EmployeeId
GROUP BY
    c.SupportRepId
ORDER BY totalSales DESC);