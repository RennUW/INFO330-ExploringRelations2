-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT c.FirstName || ' ' || c.LastName AS FullName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM customers c
JOIN invoices i ON c.CustomerId = i.CustomerId
WHERE c.Country = 'Brazil'
ORDER BY i.InvoiceDate;
