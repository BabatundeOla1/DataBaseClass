USE mdc_ch02;

SELECT LastName, FirstName, Phone
FROM customer, invoice
WHERE customer.CustomerID = invoice.CustomerID
	AND TotalAmount > 100.00
ORDER BY LastName ASC, FirstName DESC;
