-- SQL script for ex_18.sql
SELECT
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
WHERE
    strftime('%Y', i.InvoiceDate) = '2009'
GROUP BY
    c.SupportRepId
ORDER BY totalSales DESC;