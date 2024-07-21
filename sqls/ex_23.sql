-- SQL script for ex_23.sql
SELECT
    t.name,
    SUM(il.quantity) AS total_quantity
FROM
    Invoice i
        JOIN
    InvoiceLine il ON i.InvoiceId = il.InvoiceId
        JOIN
    Track t ON il.TrackId = t.TrackId
WHERE
    strftime('%Y', i.InvoiceDate) = '2013'
GROUP BY
    t.Name
ORDER BY
    total_quantity DESC;
