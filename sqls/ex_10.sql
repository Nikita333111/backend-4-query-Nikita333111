-- SQL script for ex_10.sql
SELECT invoiceid AS invoiceNumber, count(invoicelineid) as countLines FROM InvoiceLine GROUP BY invoiceid;