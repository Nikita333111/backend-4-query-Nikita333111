-- SQL script for ex_11.sql
SELECT InvoiceId, name from InvoiceLine as I join Track as T where I.TrackId = T.TrackId;