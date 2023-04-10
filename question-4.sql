-- Which sales agent made the most in sales in 2010?
SELECT e.FirstName || ' ' || e.LastName AS SalesAgentFullName, SUM(ii.Quantity) AS TotalQuantity
FROM employees e
JOIN customers c ON e.EmployeeId = c.SupportRepId
JOIN invoices i ON c.CustomerId = i.CustomerId
JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId
WHERE e.Title = 'Sales Support Agent' AND substr(i.InvoiceDate, 1, 4) = '2010'
GROUP BY e.EmployeeId, SalesAgentFullName
ORDER BY TotalQuantity DESC
LIMIT 1;
