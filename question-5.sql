-- What was the most purchased track of 2013?
SELECT t.Name AS TrackName, SUM(ii.Quantity) AS TotalQuantity
FROM tracks t
JOIN invoice_items ii ON t.TrackId = ii.TrackId
JOIN invoices i ON ii.InvoiceId = i.InvoiceId
WHERE substr(i.InvoiceDate, 1, 4) = '2013'
GROUP BY t.TrackId, TrackName
ORDER BY TotalQuantity DESC
LIMIT 1;
