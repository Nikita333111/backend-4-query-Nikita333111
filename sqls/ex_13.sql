-- SQL script for ex_13.sql
SELECT COUNT(InvoiceId), BillingCountry FROM Invoice GROUP BY BillingCountry;