USE mdc_ch02;

SELECT LastName,
       FirstName,
       COUNT(*) AS TotalNumberOfCustomers
FROM customer
GROUP BY LastName, FirstName;
