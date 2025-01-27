USE cape_codd;
SELECT WarehouseID,
SUM(QuantityOnHand) AS TotalItemsOnHandLT3
From inventory
GROUP BY WarehouseID
HAVING COUNT(DISTINCT SKU) < 3
ORDER BY TotalItemsOnHandLT3 DESC