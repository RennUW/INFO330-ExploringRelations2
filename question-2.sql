-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT e.FirstName || ' ' || e.LastName AS SalesAgentFullName, ii.InvoiceLineId, ii.TrackId, ii.UnitPrice, ii.Quantity
FROM employees e
JOIN customers c ON e.EmployeeId = c.SupportRepId
JOIN invoices i ON c.CustomerId = i.CustomerId
JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId
WHERE e.Title = 'Sales Support Agent'
ORDER BY SalesAgentFullName, ii.InvoiceLineId;
