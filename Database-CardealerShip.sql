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

INSERT INTO dealerships (name, address, phone)
VALUES
('DrivePro Autos', '321 Fast Lane, Metropolis, NY', '718-555-9001'),
('Precision Motors', '654 Sunset Blvd, Hollywood, CA', '323-555-1122'),
('Luxury Auto Group', '123 Oceanview Dr, Malibu, CA', '424-555-3344'),
('UrbanDrive', '987 Green St, Brooklyn, NY', '646-555-5567'),
('AutoXpress', '543 Maple Ave, Portland, OR', '503-555-7788'),
('Prestige Motors', '234 Diamond Blvd, Las Vegas, NV', '702-555-8899'),
('SilverLine Autos', '876 Oak St, San Francisco, CA', '415-555-9900'),
('CarZone Sales', '111 Horizon Rd, Miami Beach, FL', '305-555-2233'),
('MetroCar Sales', '333 River Ave, Austin, TX', '512-555-4455'),
('Elite Vehicle Sales', '555 Elite Dr, Scottsdale, AZ', '480-555-6677');

INSERT INTO Vehicles (VIN, Year, Make, Model, Type, Color, Idometer, Price, Sold)
VALUES
('1HGCM82633A123456', 2020, 'Honda', 'Civic', 'Sedan', 'Blue', 22000, 20000.50, 0),
('2FMDK3GC1BBA654321', 2018, 'Ford', 'Escape', 'SUV', 'Red', 45000, 18000.75, 0),
('3VW2B7AT6BM054987', 2019, 'Volkswagen', 'Jetta', 'Sedan', 'Black', 30000, 16000.25, 1),
('4T1BF1FK0HU123654', 2021, 'Toyota', 'Camry', 'Sedan', 'White', 15000, 24000.00, 0),
('5NMS3CAD1LH654321', 2020, 'Hyundai', 'Santa Fe', 'SUV', 'Silver', 35000, 28000.99, 1),
('1G1ZD5ST0LF123456', 2020, 'Chevrolet', 'Malibu', 'Sedan', 'Gray', 25000, 19000.00, 0),
('2C4RDGBG0KR123987', 2019, 'Chrysler', 'Pacifica', 'Van', 'Blue', 40000, 27000.50, 0),
('3GNCJNSB5JL123789', 2021, 'Chevrolet', 'Trax', 'SUV', 'Green', 15000, 21000.99, 1),
('5LMJJ3JT2LE123890', 2020, 'Lincoln', 'Nautilus', 'SUV', 'White', 22000, 45000.00, 0),
('1N4BL4CV4HC123456', 2018, 'Nissan', 'Altima', 'Sedan', 'Black', 55000, 13000.50, 1);





