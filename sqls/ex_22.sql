-- SQL script for ex_22.sql
SELECT
    i.BillingCountry,
    SUM(i.Total) AS totalSales
FROM
    Invoice i
GROUP BY
    i.BillingCountry
ORDER BY totalSales DESC;
