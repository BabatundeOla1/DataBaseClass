USE cape_codd;
SELECT SKU, SKU_Description 
FROM inventory
WHERE QuantityOnHand = 0