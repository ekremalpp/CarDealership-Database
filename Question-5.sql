SELECT DISTINCT d.*
FROM dealerships AS d
JOIN inventory AS i 
ON d.Dealership_ID  = i.dealership_id
JOIN vehicles AS v 
ON i.VIN = v.VIN
WHERE v.Type = 'sedan';
 
