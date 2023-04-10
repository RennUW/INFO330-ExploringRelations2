-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT ii.InvoiceLineId, ii.InvoiceId, ii.TrackId, t.Name AS TrackName, ii.UnitPrice, ii.Quantity, ar.Name AS ArtistName
FROM invoice_items ii
JOIN tracks t ON ii.TrackId = t.TrackId
JOIN albums al ON t.AlbumId = al.AlbumId
JOIN artists ar ON al.ArtistId = ar.ArtistId
ORDER BY ii.InvoiceLineId;
