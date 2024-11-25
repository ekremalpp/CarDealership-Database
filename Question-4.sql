SELECT d.*
FROM cardealership.dealerships AS d 
JOIN cardealership.inventory AS i 
ON d.Dealership_ID = i.dealership_id
WHERE i.VIN = '1G1ZD5ST0LF123456';