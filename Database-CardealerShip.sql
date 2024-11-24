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
DROP TABLE IF EXISTS  Lease_contracts;
-- Create the Dealerships table 

CREATE TABLE Dealerships (
Dealership_ID INT AUTO_INCREMENT PRIMARY KEY,
DealershipName VARCHAR(50) NOT NULL,
DealershipAddress VARCHAR(50) NOT NULL,
DealershipPhone VARCHAR(15) NOT NULL
);

-- Create the Vehicles table 

CREATE TABLE Vehicles(
VIN VARCHAR(17) PRIMARY KEY,
Year INT NOT NULL,
Make VARCHAR(50) NOT NULL,
Model VARCHAR(50) NOT NULL,
Type VARCHAR(50) NOT NULL,
Color VARCHAR(50) NOT NULL,
Idometer INT NOT NULL,
Price DOUBLE NOT NULL,
Sold BOOLEAN DEFAULT 0
);

-- Create the Inventory table
CREATE TABLE Inventory(
dealership_id INT NOT NULL,
VIN VARCHAR(17) NOT NULL,
FOREIGN KEY(dealership_id) REFERENCES Dealerships(Dealership_ID),
    FOREIGN KEY(VIN) REFERENCES Vehicles(VIN)
);

-- Create Sales_contracts table
CREATE TABLE Sales_contracts(
Contract_Id INT AUTO_INCREMENT PRIMARY KEY,
Buyer_name VARCHAR(50),
Buyer_phone VARCHAR(15)  NOT NULL,
VIN VARCHAR(17),
Sales_date DATE NOT NULL,
Price DOUBLE NOT NULL,
FOREIGN KEY(VIN) REFERENCES Vehicles(VIN)
);


CREATE TABLE Lease_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Dealership_id INT,
    VIN VARCHAR(17),
    lease_start_date DATE NOT NULL,
    lease_end_date DATE NOT NULL,
    monthly_payment DOUBLE NOT NULL,
    customer_name VARCHAR(50),
    customer_phone VARCHAR(15),
   FOREIGN KEY (Dealership_id) REFERENCES Dealerships(Dealership_ID),
    FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
);


INSERT INTO Dealerships (DealershipName, DealershipAddress, DealershipPhone)
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

-- Insert data into Vehicles
INSERT INTO Vehicles (VIN, Year, Make, Model, Type, Color, Idometer, Price, Sold)
VALUES
('1HGCM82633A123456', 2020, 'Honda', 'Civic', 'Sedan', 'Blue', 22000, 20000.50, 0),
('2FMDK3GC1BBA65431', 2018, 'Ford', 'Escape', 'SUV', 'Red', 45000, 18000.75, 0),
('3VW2B7AT6BM054987', 2019, 'Volkswagen', 'Jetta', 'Sedan', 'Black', 30000, 16000.25, 1),
('4T1BF1FK0HU123654', 2021, 'Toyota', 'Camry', 'Sedan', 'White', 15000, 24000.00, 0),
('5NMS3CAD1LH654321', 2020, 'Hyundai', 'Santa Fe', 'SUV', 'Silver', 35000, 28000.99, 1),
('1G1ZD5ST0LF123456', 2020, 'Chevrolet', 'Malibu', 'Sedan', 'Gray', 25000, 19000.00, 0),
('2C4RDGBG0KR123987', 2019, 'Chrysler', 'Pacifica', 'Van', 'Blue', 40000, 27000.50, 0),
('3GNCJNSB5JL123789', 2021, 'Chevrolet', 'Trax', 'SUV', 'Green', 15000, 21000.99, 1),
('5LMJJ3JT2LE123890', 2020, 'Lincoln', 'Nautilus', 'SUV', 'White', 22000, 45000.00, 0),
('1N4BL4CV4HC123456', 2018, 'Nissan', 'Altima', 'Sedan', 'Black', 55000, 13000.50, 1);
SELECT* FROM inventory;
-- Insert data into Inventory
INSERT INTO Inventory (dealership_id, VIN)
VALUES
(1, '1HGCM82633A123456'),  -- Honda Civic
(2, '2FMDK3GC1BBA65431'),  -- Ford Escape
(3, '3VW2B7AT6BM054987'),  -- Volkswagen Jetta
(4, '4T1BF1FK0HU123654'),  -- Toyota Camry
(5, '5NMS3CAD1LH654321'),  -- Hyundai Santa Fe
(6, '1G1ZD5ST0LF123456'),  -- Chevrolet Malibu
(7, '2C4RDGBG0KR123987'),  -- Chrysler Pacifica
(8, '3GNCJNSB5JL123789'),  -- Chevrolet Trax
(9, '5LMJJ3JT2LE123890'),  -- Lincoln Nautilus
(10, '1N4BL4CV4HC123456');  -- Nissan Altima

-- Insert data into Sales_contracts
INSERT INTO Sales_contracts (Buyer_name, Buyer_phone, VIN, Sales_date, Price)
VALUES
('John Doe', '718-555-9001', '1HGCM82633A123456', '2023-12-01', 20000.50),  
('Jane Smith', '323-555-1122', '2FMDK3GC1BBA65431', '2023-11-20', 18000.75),  
('Alice Johnson', '415-555-3344', '3VW2B7AT6BM054987', '2023-10-15', 16000.25), 
('Robert Brown', '646-555-5567', '4T1BF1FK0HU123654', '2023-12-10', 24000.00),  
('Emma White', '503-555-7788', '5NMS3CAD1LH654321', '2023-11-25', 28000.99),  
('Daniel Green', '702-555-8899', '1G1ZD5ST0LF123456', '2023-09-18', 19000.00),  
('Olivia Black', '415-555-9900', '2C4RDGBG0KR123987', '2023-10-30', 27000.50),  
('Liam Adams', '305-555-2233', '3GNCJNSB5JL123789', '2023-12-02', 21000.99),  
('Sophia Miller', '512-555-4455', '5LMJJ3JT2LE123890', '2023-11-10', 45000.00),  
('James Davis', '480-555-6677', '1N4BL4CV4HC123456', '2023-11-10', 13000.50);  

-- Insert data into Lease_contracts
INSERT INTO Lease_contracts (Dealership_id, VIN, lease_start_date, lease_end_date, monthly_payment, customer_name, customer_phone)
VALUES
(1, '1HGCM82633A123456', '2024-01-01', '2025-01-01', 350.00, 'John Doe', '718-555-9001'),  
(2, '2FMDK3GC1BBA65431', '2024-02-01', '2025-02-01', 400.00, 'Jane Smith', '323-555-1122'),  
(3, '3VW2B7AT6BM054987', '2024-03-01', '2025-03-01', 375.00, 'Alice Johnson', '415-555-3344'),
(4, '4T1BF1FK0HU123654', '2024-04-01', '2025-04-01', 450.00, 'Robert Brown', '646-555-5567'),  
(5, '5NMS3CAD1LH654321', '2024-05-01', '2025-05-01', 500.00, 'Emma White', '503-555-7788');  
