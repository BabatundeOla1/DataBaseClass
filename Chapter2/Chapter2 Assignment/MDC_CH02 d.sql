USE mdc_ch02;

SELECT LastName, FirstName, Phone, DateIn, DateOut
FROM customer, invoice, invoice_item
WHERE TotalAmount > 100.00;
