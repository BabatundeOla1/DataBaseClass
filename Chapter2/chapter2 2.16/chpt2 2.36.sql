USE cape_codd;
SELECT WarehouseID,
SUM(QuantityOnHand) AS TotalItemsOnHand
From inventory
GROUP BY WarehouseID
ORDER BY TotalItemsOnHand DESC