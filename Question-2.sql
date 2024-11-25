SELECT v.*
FROM cardealership.inventory AS i
JOIN cardealership.vehicles AS v
ON i.VIN = v.VIN
WHERE i.dealership_id = 3;
