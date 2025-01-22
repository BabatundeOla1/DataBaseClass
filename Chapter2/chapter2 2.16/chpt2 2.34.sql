USE cape_codd;
SELECT 
	SUM(QuantityOnHand) AS total_sum,
    MIN(QuantityOnHand) AS minimum,
    MAX(QuantityOnHand) AS maximum,
    AVG(QuantityOnHand) AS average,
    COUNT(QuantityOnHand) AS total_count
FROM inventory