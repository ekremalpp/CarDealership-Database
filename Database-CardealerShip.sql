-- Drop the database if it exist
DROP DATABASE IF EXISTS CarDealership;

-- Create the CarDealership database
CREATE DATABASE CarDealership;

-- CREATE DATABASE IF NOT EXISTS CarDealership;
USE CarDealership;

-- Drop tables if they exist
DROP TABLE IF EXISTS Dealerships;
DROP TABLE IF EXISTS Vehicles;
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Sales_contracts;

-- Create the Dealerships table 

CREATE TABLE Dealerships (
Dealership_ID INT AUTO_INCREMENT PRIMARY KEY,
DealershipName VARCHAR(50) NOT NULL,
DealershipAddress VARCHAR(50) NOT NULL,
DealershipPhone VARCHAR(12) NOT NULL
);

-- Create the Vehicles table 

CREATE TABLE Vehicles(
VIN VARCHAR(50) PRIMARY KEY,
`Year` INT NOT NULL,
Make VARCHAR(50) NOT NULL,
Model VARCHAR(50) NOT NULL,
`Type` VARCHAR(50) NOT NULL,
Color VARCHAR(50) NOT NULL,
Idometer INT NOT NULL,
Price DOUBLE NOT NULL,
Sold BOOLEAN DEFAULT 0
);

-- Create the Inventory table
CREATE TABLE Inventory(
dealership_id INT NOT NULL,
VIN VARCHAR(50) NOT NULL,
FOREIGN KEY(dealership_id) REFERENCES Dealerships(Dealership_id),
FOREIGN KEY(VIN) REFERENCES Vehicles(VIN)
);

-- Create Sales_contracts table
CREATE TABLE Sales_contracts(
Contract_Id INT AUTO_INCREMENT PRIMARY KEY,
Buyer_name VARCHAR(50),
Buyer_contract  DOUBLE NOT NULL,
VIN VARCHAR(50),
Sales_date INT NOT NULL,
Price DOUBLE NOT NULL,
FOREIGN KEY(VIN) REFERENCES Vehicles(VIN)
);





