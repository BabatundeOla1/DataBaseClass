USE cape_codd;
SELECT SKU, SKU_Description, WarehouseID
FROM inventory
WHERE QuantityOnHand = 0
ORDER BY WarehouseID ASC