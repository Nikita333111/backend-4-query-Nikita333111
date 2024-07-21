-- SQL script for ex_16.sql
SELECT
    i.InvoiceId,
    count(il.InvoiceLineId) as invoice_lines
from
    Invoice i
LEFT JOIN
    InvoiceLine il
on
    i.InvoiceId = il.InvoiceId
group by il.InvoiceId