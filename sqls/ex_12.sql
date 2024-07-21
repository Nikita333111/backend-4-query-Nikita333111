-- SQL script for ex_12.sql
SELECT I.InvoiceId,
       T.name,
       A.name
FROM
    InvoiceLine AS I JOIN Track AS T
        ON I.TrackId = T.TrackId
        JOIN Album AS Al ON T.AlbumId = Al.AlbumId
        JOIN Artist AS A ON A.ArtistId = Al.ArtistId;
