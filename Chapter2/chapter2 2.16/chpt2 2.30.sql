USE cape_codd;
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM inventory
WHERE QuantityOnHand BETWEEN 1 AND 10