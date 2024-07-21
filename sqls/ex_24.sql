-- SQL script for ex_24.sql
SELECT
    t.name,
    SUM(il.quantity) AS total_saled
FROM
    InvoiceLine il
        JOIN
    Track t ON il.TrackId = t.TrackId
GROUP BY
    t.Name
ORDER BY
    total_saled DESC LIMIT 5;