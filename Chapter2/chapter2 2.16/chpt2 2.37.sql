USE cape_codd;
SELECT WarehouseID,
SUM(QuantityOnHand) AS TotalItemsOnHandLT3
From inventory
WHERE SKU < 3
GROUP BY WarehouseID
ORDER BY TotalItemsOnHandLT3 DESC