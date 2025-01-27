USE mdc_ch02;

SELECT LastName, FirstName
FROM customer
GROUP BY LastName, FirstName;