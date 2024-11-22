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

-- Create the dealerships table 

CREATE TABLE Dealerships (
DealershipID INT AUTO_INCREMENT PRIMARY KEY,
DealershipName VARCHAR(100) NOT NULL,
DealershipAddress VARCHAR(100) NOT NULL,
DealershipPhone VARCHAR(50) NOT NULL,



