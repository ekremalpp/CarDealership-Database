SELECT s.*
FROM sales_contracts AS s
JOIN dealerships AS d
ON s.Contract_Id = d.Dealership_ID
JOIN vehicles AS v
ON s.VIN = v.VIN
WHERE d.DealershipName = 'DrivePro Autos'
AND s.Sales_date BETWEEN '2023-01-01' AND '2023-12-12'