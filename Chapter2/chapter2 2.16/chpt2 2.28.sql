USE cape_codd;
(SELECT SKU, SKU_Description, WarehouseID
FROM inventory
WHERE QuantityOnHand = 0 or QuantityOnOrder = 0
ORDER BY WarehouseID DESC)
UNION ALL
(SELECT SKU, SKU_Description, WarehouseID
FROM inventory
WHERE QuantityOnHand = 0 or QuantityOnOrder = 0
ORDER BY SKU ASC)