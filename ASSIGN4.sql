-- NOTE : No need to change any table or rows just follow the steps and start writing your queries.

CREATE DATABASE PRACTICE ; -- STEP.1 CREATE DATABASE
USE PRACTICE; -- STEP.2 USE DATABASE 

-- CREATE TABLE
CREATE TABLE vehicle_data (
    vehicle_id INT AUTO_INCREMENT PRIMARY KEY,                -- ID as a primary key
    manufacturer VARCHAR(255),                         -- Manufacturer, text field for names up to 255 characters
    region VARCHAR(100),                               -- Region, with text for various region names
    manufacturer_year YEAR,                            -- Year of manufacture (appropriate for a year format) 
    fuel_type ENUM('Electric', 'Petrol', 'Diesel', 'CNG') NOT NULL,  -- Fuel type with restricted values
    number_of_vehicles INT UNSIGNED,                   -- Total number of vehicles, can be a large positive number
    commercial_vehicles INT UNSIGNED,                  -- Commercial vehicles count (positive integer)
    passenger_vehicles INT UNSIGNED,                   -- Passenger vehicles count (positive integer)
    two_wheelers INT UNSIGNED,                         -- Two-wheelers count (positive integer)
    heavy_duty_vehicles INT UNSIGNED,                  -- Heavy-duty vehicles count (positive integer)
    co2_emissions_mt DECIMAL(12, 2),                   -- CO2 emissions in metric tons, decimal with 2 decimal places
    energy_consumption_gwh DECIMAL(12, 2),             -- Energy consumption in GWh, decimal with 2 decimal places
    market_share DECIMAL(5, 2),                        -- Market share percentage, decimal with 2 decimal places
    growth_rate DECIMAL(5, 2),                         -- Growth rate percentage, decimal with 2 decimal places
    average_vehicle_age DECIMAL(3, 1),                 -- Average vehicle age (e.g., 11.5 years, with 1 decimal place)
    new_registrations INT UNSIGNED,                    -- New vehicle registrations (positive integer)
    scrapped_vehicles INT UNSIGNED,                    -- Scrapped vehicles count (positive integer)
    ratings FLOAT,                                     -- Ratings out of 5, using FLOAT to store real numbers
    base_price DECIMAL(15, 2),                          -- Base price of the vehicle, stored as a decimal (e.g., 99999.99)
    pollution_percentage DECIMAL(5, 2),                -- Pollution percentage, indicating the pollution impact relative to a standard or baseline
    lifecycle ENUM('In Production', 'In Use', 'Retired') -- Lifecycle stage of the vehicle
);

-- INSERT DATA 
INSERT INTO vehicle_data (manufacturer, region, manufacturer_year, fuel_type, number_of_vehicles, commercial_vehicles, passenger_vehicles, two_wheelers, heavy_duty_vehicles, co2_emissions_mt, energy_consumption_gwh, market_share, growth_rate, average_vehicle_age, new_registrations, scrapped_vehicles, ratings, base_price, pollution_percentage, lifecycle)
VALUES
('Mazda', 'North America', 2020, 'Petrol', 6000, 2500, 3500, 100, 250, 145.00, 48.75, 27.0, 5.5, 3.0, 1100, 180, 4.3, 33000.00, 19.50, 'In Use'),
('Subaru', 'Europe', 2019, 'Diesel', 5000, 2000, 3000, 150, 200, 160.00, 50.00, 26.0, 5.0, 3.5, 1200, 150, 4.2, 29000.00, 21.00, 'In Use'),
('Lexus', 'Asia', 2021, 'Electric', 4500, 0, 4500, 100, 50, 0.00, 55.50, 22.0, 8.0, 2.0, 1300, 120, 4.6, 42000.00, 4.00, 'In Production'),
('Fiat', 'South America', 2022, 'Petrol', 7000, 3000, 4000, 200, 300, 140.75, 47.50, 29.0, 6.0, 3.5, 1100, 250, 4.4, 31000.00, 20.00, 'In Production'),
('Mitsubishi', 'Africa', 2018, 'Diesel', 4500, 1800, 2700, 100, 200, 150.00, 55.00, 31.0, 5.5, 3.0, 1000, 150, 4.2, 32000.00, 23.00, 'Retired'),
('Peugeot', 'Europe', 2020, 'Electric', 6000, 0, 6000, 250, 100, 0.00, 60.00, 25.0, 7.5, 2.5, 1400, 90, 4.7, 46000.00, 3.50, 'In Production'),
('Renault', 'North America', 2019, 'Petrol', 5500, 2300, 3200, 150, 250, 145.50, 52.00, 30.0, 6.0, 3.5, 1100, 200, 4.5, 33000.00, 20.50, 'In Use'),
('Jaguar', 'Asia', 2021, 'Electric', 4000, 0, 4000, 50, 200, 0.00, 60.00, 22.5, 9.0, 2.5, 1300, 120, 4.6, 44000.00, 4.00, 'In Production'),
('Kia', 'Europe', 2021, 'Diesel', 5000, 2000, 3000, 150, 300, 155.00, 50.00, 28.0, 7.0, 3.0, 1000, 180, 4.4, 35000.00, 19.00, 'In Use'),
('Toyota', 'South America', 2020, 'Electric', 7000, 0, 7000, 200, 100, 0.00, 65.00, 30.0, 8.0, 2.0, 1400, 200, 4.8, 49000.00, 3.50, 'In Production'),
('BMW', 'North America', 2017, 'Petrol', 6500, 2500, 4000, 100, 200, 155.00, 50.00, 27.0, 6.5, 3.5, 1200, 200, 4.4, 33000.00, 22.00, 'In Use'),
('Audi', 'Asia', 2019, 'Electric', 4000, 0, 4000, 100, 100, 0.00, 55.00, 23.5, 8.5, 2.0, 1300, 100, 4.7, 45000.00, 5.00, 'In Production'),
('Chevrolet', 'Europe', 2022, 'Diesel', 5000, 2000, 3000, 150, 250, 160.00, 53.00, 26.0, 6.0, 3.0, 1000, 180, 4.3, 31000.00, 21.50, 'In Use'),
('Hyundai', 'North America', 2021, 'Petrol', 6000, 2500, 3500, 150, 300, 145.00, 55.00, 32.0, 5.5, 3.0, 1200, 150, 4.4, 34000.00, 19.00, 'In Use'),
('Mercedes', 'South America', 2020, 'Electric', 4500, 0, 4500, 200, 50, 0.00, 60.00, 28.0, 7.0, 2.5, 1400, 100, 4.6, 42000.00, 3.50, 'In Production'),
('Ford', 'Africa', 2022, 'Diesel', 6000, 2500, 3500, 100, 150, 160.00, 55.00, 29.0, 6.5, 3.0, 1100, 200, 4.4, 33000.00, 18.50, 'In Use'),
('Nissan', 'Europe', 2019, 'Electric', 4000, 0, 4000, 150, 50, 0.00, 57.50, 24.0, 8.0, 3.0, 1300, 120, 4.7, 44000.00, 4.00, 'In Production'),
('Mazda', 'Asia', 2020, 'Petrol', 5000, 2000, 3000, 100, 200, 145.00, 48.50, 30.0, 5.5, 3.5, 1200, 150, 4.5, 32000.00, 20.00, 'In Use'),
('Subaru', 'South America', 2021, 'Diesel', 5500, 2200, 3300, 150, 200, 160.00, 50.00, 28.5, 7.0, 2.5, 1000, 180, 4.3, 33000.00, 22.00, 'In Use'),
('Peugeot', 'North America', 2020, 'Electric', 6000, 0, 6000, 250, 100, 0.00, 60.00, 25.0, 7.0, 2.0, 1300, 120, 4.8, 46000.00, 4.00, 'In Production'),
('Renault', 'Asia', 2022, 'Petrol', 7000, 3000, 4000, 150, 250, 150.00, 52.50, 30.0, 6.5, 3.5, 1100, 200, 4.4, 32000.00, 21.50, 'In Use'),
('Mitsubishi', 'North America', 2019, 'Diesel', 4500, 1800, 2700, 100, 150, 155.00, 53.00, 26.0, 6.0, 3.0, 1000, 150, 4.3, 31000.00, 22.00, 'In Production'),
('Fiat', 'Africa', 2020, 'Petrol', 6000, 2500, 3500, 150, 300, 140.00, 50.00, 28.5, 6.0, 3.5, 1200, 180, 4.4, 34000.00, 20.50, 'In Use'),
('Jaguar', 'Europe', 2021, 'Electric', 5000, 0, 5000, 200, 50, 0.00, 62.00, 27.0, 8.0, 2.0, 1400, 100, 4.7, 45000.00, 4.00, 'In Production'),
('Kia', 'North America', 2021, 'Diesel', 6500, 2800, 3700, 200, 300, 160.00, 55.00, 30.0, 6.5, 3.5, 1100, 200, 4.5, 34000.00, 18.50, 'In Use'),
('BMW', 'South America', 2020, 'Electric', 4500, 0, 4500, 150, 100, 0.00, 60.00, 28.0, 7.5, 2.5, 1300, 120, 4.6, 42000.00, 3.50, 'In Production'),
('Toyota', 'Africa', 2019, 'Diesel', 6500, 3000, 3500, 200, 150, 160.00, 54.00, 33.0, 6.0, 3.5, 1000, 200, 4.4, 33000.00, 21.00, 'In Use'),
('Honda', 'Europe', 2021, 'Petrol', 5500, 2300, 3200, 150, 250, 150.00, 52.50, 27.5, 5.5, 3.0, 1100, 180, 4.3, 32000.00, 22.50, 'In Use'),
('Mercedes', 'South America', 2022, 'Electric', 4000, 0, 4000, 200, 50, 0.00, 62.00, 23.5, 8.5, 2.5, 1200, 100, 4.6, 43000.00, 3.00, 'In Production'),
('Mazda', 'North America', 2020, 'Diesel', 6000, 2500, 3500, 150, 250, 160.00, 55.50, 29.0, 6.5, 3.0, 1200, 190, 4.3, 32000.00, 22.00, 'In Use'),
('Peugeot', 'Asia', 2021, 'Electric', 4500, 0, 4500, 100, 50, 0.00, 60.00, 23.0, 7.5, 2.5, 1300, 120, 4.6, 43000.00, 3.50, 'In Production'),
('Honda', 'South America', 2022, 'Electric', 6500, 0, 6500, 250, 100, 0.00, 55.50, 28.0, 7.0, 2.5, 1300, 120, 4.5, 44000.00, 3.00, 'In Production'),
('Ford', 'Europe', 2020, 'Petrol', 5000, 2300, 2700, 100, 150, 145.00, 50.00, 27.5, 6.5, 3.0, 1200, 200, 4.4, 33000.00, 20.00, 'In Use'),
('Fiat', 'Asia', 2021, 'Diesel', 6000, 2500, 3500, 100, 200, 160.00, 54.50, 28.0, 6.0, 3.0, 1100, 180, 4.4, 34000.00, 21.00, 'In Use'),
('Chevrolet', 'South America', 2021, 'Electric', 5500, 0, 5500, 150, 100, 0.00, 57.50, 27.0, 8.0, 2.5, 1300, 120, 4.7, 42000.00, 4.00, 'In Production'),
('BMW', 'North America', 2022, 'Diesel', 6500, 2800, 3700, 150, 200, 165.00, 56.00, 29.0, 7.0, 3.0, 1200, 190, 4.3, 33000.00, 22.00, 'In Use'),
('Renault', 'Europe', 2021, 'Petrol', 6000, 2300, 3700, 100, 200, 150.00, 52.00, 26.5, 6.5, 3.0, 1100, 180, 4.4, 34000.00, 19.50, 'In Use'),
('Hyundai', 'North America', 2020, 'Electric', 5500, 0, 5500, 100, 150, 0.00, 57.50, 28.0, 7.0, 2.5, 1300, 120, 4.7, 43000.00, 4.00, 'In Production'),
('Toyota', 'Asia', 2021, 'Diesel', 5000, 2000, 3000, 100, 150, 155.00, 51.00, 29.0, 7.5, 3.0, 1200, 200, 4.4, 32000.00, 20.00, 'In Use'),
('Honda', 'Africa', 2020, 'Petrol', 6500, 2700, 3800, 150, 250, 145.00, 51.50, 28.5, 7.0, 3.0, 1100, 190, 4.3, 33000.00, 21.00, 'In Use'),
('BMW', 'South America', 2020, 'Diesel', 6000, 2300, 3700, 150, 200, 155.00, 53.00, 30.0, 6.5, 3.5, 1200, 180, 4.4, 34000.00, 19.00, 'In Use'),
('Kia', 'Europe', 2022, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 60.00, 24.0, 8.0, 2.5, 1300, 100, 4.6, 43000.00, 3.50, 'In Production'),
('Ford', 'Africa', 2021, 'Diesel', 4500, 2000, 2500, 100, 200, 160.00, 54.00, 28.0, 7.5, 3.0, 1200, 180, 4.4, 33000.00, 20.50, 'In Use'),
('Chevrolet', 'Europe', 2021, 'Electric', 6000, 0, 6000, 150, 100, 0.00, 57.50, 25.0, 8.0, 2.5, 1300, 120, 4.7, 44000.00, 4.00, 'In Production'),
('Subaru', 'South America', 2021, 'Diesel', 5500, 2300, 3200, 100, 150, 155.00, 52.50, 28.0, 6.0, 3.5, 1100, 180, 4.3, 33000.00, 21.00, 'In Use'),
('Peugeot', 'North America', 2022, 'Petrol', 5000, 2300, 2700, 100, 150, 150.00, 51.00, 27.5, 6.5, 3.0, 1200, 200, 4.4, 34000.00, 19.50, 'In Use'),
('Nissan', 'Europe', 2022, 'Electric', 6500, 0, 6500, 200, 100, 0.00, 58.00, 27.5, 8.0, 2.5, 1300, 100, 4.7, 45000.00, 3.50, 'In Production'),
('Mazda', 'North America', 2020, 'Diesel', 5000, 2000, 3000, 150, 200, 160.00, 52.50, 30.0, 7.0, 3.5, 1200, 180, 4.3, 32000.00, 22.00, 'In Use'),
('Chevrolet', 'South America', 2022, 'Diesel', 4500, 1500, 2500, 100, 200, 155.00, 53.00, 29.0, 7.5, 3.0, 1100, 190, 4.4, 33000.00, 21.50, 'In Use'),
('Fiat', 'Africa', 2021, 'Electric', 6000, 0, 6000, 200, 100, 0.00, 55.00, 24.0, 8.0, 2.5, 1300, 120, 4.6, 44000.00, 4.00, 'In Production'),
('Honda', 'North America', 2021, 'Diesel', 5000, 2000, 3000, 100, 150, 155.00, 53.50, 28.0, 7.0, 3.0, 1200, 180, 4.3, 33000.00, 19.50, 'In Use'),
('BMW', 'Europe', 2022, 'Petrol', 6000, 2300, 3700, 100, 200, 145.00, 51.50, 27.5, 6.5, 3.5, 1200, 190, 4.4, 34000.00, 20.50, 'In Use'),
('Subaru', 'North America', 2021, 'Petrol', 6000, 2500, 3500, 150, 200, 150.00, 52.50, 30.0, 7.0, 3.0, 1200, 190, 4.4, 33000.00, 21.00, 'In Use'),
('Ford', 'Asia', 2020, 'Electric', 4500, 0, 4500, 100, 100, 0.00, 60.00, 25.0, 8.0, 2.5, 1300, 120, 4.5, 42000.00, 3.50, 'In Production'),
('Nissan', 'South America', 2022, 'Diesel', 5000, 2300, 2700, 100, 200, 160.00, 55.00, 28.0, 7.0, 3.0, 1200, 180, 4.3, 34000.00, 22.00, 'In Use'),
('Peugeot', 'North America', 2021, 'Petrol', 6500, 2800, 3700, 150, 250, 155.00, 53.00, 29.0, 7.5, 3.0, 1200, 200, 4.4, 34000.00, 20.50, 'In Use'),
('Mazda', 'Europe', 2020, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 57.50, 26.0, 8.0, 2.5, 1300, 120, 4.7, 43000.00, 3.00, 'In Production'),
('Hyundai', 'South America', 2022, 'Petrol', 6000, 2500, 3500, 150, 300, 150.00, 51.50, 28.0, 6.5, 3.0, 1200, 200, 4.4, 33000.00, 19.50, 'In Use'),
('BMW', 'Africa', 2021, 'Electric', 5000, 0, 5000, 200, 100, 0.00, 55.50, 27.0, 8.0, 2.5, 1300, 100, 4.6, 44000.00, 3.50, 'In Production'),
('Jaguar', 'South America', 2021, 'Diesel', 5500, 2300, 3200, 150, 200, 160.00, 52.00, 28.5, 6.0, 3.5, 1200, 190, 4.3, 33000.00, 21.00, 'In Use'),
('Toyota', 'Europe', 2021, 'Electric', 6000, 0, 6000, 250, 100, 0.00, 58.00, 25.0, 7.5, 2.5, 1300, 120, 4.8, 44000.00, 3.00, 'In Production'),
('Chevrolet', 'North America', 2022, 'Petrol', 5500, 2000, 3500, 150, 250, 155.00, 54.00, 30.0, 7.0, 3.0, 1200, 180, 4.4, 34000.00, 19.50, 'In Use'),
('Fiat', 'North America', 2021, 'Diesel', 5000, 2300, 2700, 100, 150, 155.00, 53.50, 28.0, 7.0, 3.0, 1200, 190, 4.3, 33000.00, 20.00, 'In Use'),
('Kia', 'Asia', 2022, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 60.00, 26.0, 8.0, 2.5, 1300, 120, 4.6, 43000.00, 3.50, 'In Production'),
('Peugeot', 'South America', 2022, 'Diesel', 6000, 2500, 3500, 150, 200, 160.00, 54.50, 29.0, 7.5, 3.0, 1200, 180, 4.4, 34000.00, 21.50, 'In Use'),
('Ford', 'Europe', 2022, 'Diesel', 5500, 2300, 3200, 100, 200, 160.00, 55.00, 30.0, 7.5, 3.0, 1200, 190, 4.3, 33000.00, 20.00, 'In Use'),
('Mazda', 'South America', 2021, 'Electric', 4500, 0, 4500, 150, 100, 0.00, 57.00, 28.0, 7.5, 2.5, 1300, 120, 4.7, 44000.00, 3.50, 'In Production'),
('Toyota', 'Africa', 2021, 'Diesel', 5000, 2000, 3000, 150, 250, 160.00, 55.50, 30.0, 6.0, 3.0, 1200, 200, 4.4, 34000.00, 19.50, 'In Use'),
('BMW', 'South America', 2021, 'Petrol', 6000, 2500, 3500, 150, 200, 150.00, 51.00, 29.0, 6.5, 3.5, 1200, 180, 4.4, 33000.00, 21.00, 'In Use'),
('Chevrolet', 'North America', 2020, 'Diesel', 5500, 2300, 3200, 100, 150, 160.00, 53.00, 28.0, 7.0, 3.0, 1200, 190, 4.3, 33000.00, 19.00, 'In Use'),
('Peugeot', 'Africa', 2022, 'Electric', 6000, 0, 6000, 200, 100, 0.00, 56.50, 26.5, 8.0, 2.5, 1300, 120, 4.7, 44000.00, 3.50, 'In Production'),
('Hyundai', 'South America', 2022, 'Diesel', 5000, 2000, 3000, 100, 150, 155.00, 54.50, 29.0, 7.0, 3.0, 1200, 180, 4.4, 33000.00, 21.50, 'In Use'),
('Ford', 'Asia', 2021, 'Electric', 5500, 0, 5500, 150, 100, 0.00, 57.00, 28.0, 7.5, 2.5, 1300, 120, 4.6, 43000.00, 3.00, 'In Production'),
('BMW', 'North America', 2021, 'Petrol', 6000, 2500, 3500, 150, 200, 155.00, 53.00, 29.0, 7.0, 3.0, 1200, 190, 4.4, 34000.00, 19.50, 'In Use'),
('Renault', 'Europe', 2020, 'Electric', 6000, 0, 6000, 150, 100, 0.00, 57.50, 27.0, 8.0, 2.5, 1300, 120, 4.7, 44000.00, 3.50, 'In Production'),
('Hyundai', 'North America', 2021, 'Diesel', 5500, 2300, 3200, 150, 200, 160.00, 54.50, 28.5, 7.5, 3.0, 1200, 190, 4.4, 33000.00, 21.00, 'In Use'),
('Mercedes', 'Africa', 2021, 'Electric', 5000, 0, 5000, 100, 100, 0.00, 60.00, 28.0, 7.5, 2.5, 1300, 120, 4.7, 44000.00, 3.00, 'In Production'),
('Jaguar', 'North America', 2021, 'Diesel', 5500, 2300, 3200, 150, 200, 160.00, 55.00, 30.0, 7.0, 3.5, 1200, 190, 4.3, 33000.00, 19.50, 'In Use'),
('Fiat', 'Asia', 2022, 'Electric', 4500, 0, 4500, 100, 100, 0.00, 58.00, 27.5, 8.0, 2.5, 1300, 120, 4.6, 43000.00, 3.00, 'In Production'),
('Toyota', 'Europe', 2020, 'Petrol', 6500, 2700, 3800, 150, 250, 150.00, 52.50, 29.0, 7.0, 3.5, 1200, 190, 4.4, 33000.00, 19.00, 'In Use'),
('Kia', 'South America', 2022, 'Electric', 5000, 0, 5000, 200, 100, 0.00, 57.50, 26.5, 7.5, 2.5, 1300, 120, 4.6, 44000.00, 3.50, 'In Production'),
('BMW', 'Africa', 2020, 'Diesel', 6000, 2500, 3500, 100, 200, 160.00, 55.00, 28.5, 7.0, 3.0, 1200, 180, 4.4, 33000.00, 21.00, 'In Use'),
('Fiat', 'North America', 2022, 'Electric', 6000, 0, 6000, 250, 150, 0.00, 56.50, 27.0, 8.0, 2.5, 1300, 120, 4.7, 44000.00, 3.00, 'In Production'),
('Ford', 'Europe', 2020, 'Electric', 4500, 0, 4500, 150, 100, 0.00, 60.00, 27.5, 8.0, 2.5, 1300, 120, 4.6, 43000.00, 3.50, 'In Production'),
('Honda', 'Asia', 2021, 'Electric', 6000, 0, 6000, 200, 100, 0.00, 60.50, 25.0, 7.5, 2.5, 1300, 120, 4.6, 43000.00, 3.50, 'In Production'),
('Chevrolet', 'Africa', 2020, 'Petrol', 5500, 2000, 3500, 150, 200, 150.00, 54.00, 30.0, 7.0, 3.0, 1200, 180, 4.3, 33000.00, 21.00, 'In Use'),
('Renault', 'North America', 2021, 'Diesel', 6000, 2300, 3200, 150, 200, 155.00, 53.00, 28.5, 7.5, 3.0, 1200, 190, 4.4, 34000.00, 20.00, 'In Use'),
('Hyundai', 'Europe', 2021, 'Electric', 6500, 0, 6500, 250, 150, 0.00, 58.00, 28.0, 8.0, 2.5, 1300, 120, 4.7, 44000.00, 3.50, 'In Production'),
('Subaru', 'North America', 2022, 'Petrol', 5000, 2500, 2500, 100, 150, 150.00, 52.00, 27.0, 7.0, 3.0, 1200, 180, 4.3, 33000.00, 19.00, 'In Use'),
('Toyota', 'Africa', 2021, 'Diesel', 6000, 2300, 3200, 150, 200, 155.00, 53.50, 28.0, 7.5, 3.0, 1200, 190, 4.4, 33000.00, 20.50, 'In Use'),
('Volkswagen', 'Europe', 2021, 'Electric', 5000, 0, 5000, 200, 100, 0.00, 56.00, 29.0, 8.0, 2.5, 1300, 120, 4.6, 43000.00, 3.00, 'In Production'),
('Ford', 'Africa', 2022, 'Diesel', 4500, 2300, 2200, 100, 150, 160.00, 54.00, 28.5, 7.5, 3.0, 1200, 190, 4.4, 33000.00, 21.50, 'In Use'),
('Chevrolet', 'Europe', 2020, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 57.00, 26.5, 7.5, 2.5, 1300, 120, 4.7, 44000.00, 3.50, 'In Production'),
('BMW', 'Asia', 2020, 'Diesel', 6000, 2500, 3500, 150, 200, 160.00, 55.50, 29.0, 7.0, 3.5, 1200, 190, 4.4, 34000.00, 19.50, 'In Use'),
('Honda', 'North America', 2022, 'Electric', 5500, 0, 5500, 150, 100, 0.00, 59.50, 27.5, 8.0, 2.5, 1300, 120, 4.7, 44000.00, 3.50, 'In Production'),
('Toyota', 'Europe', 2022, 'Petrol', 6000, 2500, 3500, 150, 200, 155.00, 52.50, 30.0, 7.0, 3.0, 1200, 190, 4.3, 33000.00, 21.00, 'In Use'),
('Mazda', 'Africa', 2021, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 58.00, 26.0, 8.0, 2.5, 1300, 120, 4.6, 43000.00, 3.50, 'In Production'),
('BMW', 'South America', 2021, 'Diesel', 5500, 2300, 3200, 100, 150, 155.00, 54.00, 28.0, 7.0, 3.0, 1200, 180, 4.4, 33000.00, 20.50, 'In Use'),
('Hyundai', 'North America', 2020, 'Electric', 4500, 0, 4500, 150, 100, 0.00, 57.50, 27.0, 8.0, 2.5, 1300, 120, 4.7, 44000.00, 3.00, 'In Production'),
('Peugeot', 'Asia', 2021, 'Petrol', 5000, 2300, 2700, 100, 150, 150.00, 53.00, 29.0, 7.0, 3.0, 1200, 190, 4.3, 34000.00, 21.00, 'In Use'),
('Volkswagen', 'South America', 2020, 'Diesel', 6000, 2500, 3500, 150, 200, 160.00, 54.50, 30.0, 7.5, 3.0, 1200, 180, 4.4, 33000.00, 19.50, 'In Use'),
('Nissan', 'Europe', 2021, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 58.50, 26.5, 7.5, 2.5, 1300, 120, 4.6, 43000.00, 3.00, 'In Production'),
('Ford', 'North America', 2020, 'Diesel', 6500, 3000, 3500, 150, 200, 160.00, 55.50, 29.0, 7.5, 3.0, 1200, 190, 4.4, 34000.00, 21.00, 'In Use'),
('Toyota', 'South America', 2022, 'Electric', 6000, 0, 6000, 250, 150, 0.00, 60.00, 25.0, 8.0, 2.5, 1300, 120, 4.7, 44000.00, 3.50, 'In Production'),
('Kia', 'Asia', 2022, 'Diesel', 5500, 2300, 3200, 150, 200, 155.00, 54.00, 30.0, 7.5, 3.0, 1200, 180, 4.4, 33000.00, 21.50, 'In Use'),
('Mercedes', 'North America', 2021, 'Electric', 4500, 0, 4500, 100, 100, 0.00, 59.00, 26.0, 7.5, 2.5, 1300, 120, 4.6, 43000.00, 3.00, 'In Production'),
('BMW', 'South America', 2022, 'Electric', 6000, 0, 6000, 200, 100, 0.00, 57.00, 28.0, 8.0, 2.5, 1300, 120, 4.7, 44000.00, 3.50, 'In Production'),
('Hyundai', 'Asia', 2022, 'Diesel', 5500, 2300, 3200, 100, 150, 160.00, 54.00, 29.0, 7.5, 3.0, 1200, 190, 4.4, 33000.00, 19.50, 'In Use'),
('Ford', 'South America', 2021, 'Electric', 4500, 0, 4500, 150, 100, 0.00, 58.00, 27.0, 7.5, 2.5, 1300, 120, 4.6, 43000.00, 3.00, 'In Production'),
('Chevrolet', 'North America', 2022, 'Petrol', 6000, 2500, 3500, 100, 150, 150.00, 52.50, 29.5, 7.5, 3.0, 1200, 190, 4.4, 34000.00, 20.50, 'In Use'),
('Nissan', 'Africa', 2021, 'Diesel', 5000, 2300, 2700, 100, 150, 160.00, 53.00, 28.0, 7.5, 3.0, 1200, 180, 4.3, 33000.00, 21.00, 'In Use'),
('Mazda', 'North America', 2021, 'Electric', 4500, 0, 4500, 150, 100, 0.00, 59.00, 27.5, 8.0, 2.5, 1300, 120, 4.6, 44000.00, 3.50, 'In Production'),
('Honda', 'South America', 2020, 'Diesel', 6000, 2300, 3200, 100, 150, 155.00, 54.00, 28.5, 7.5, 3.0, 1200, 190, 4.4, 33000.00, 19.00, 'In Use'),
('BMW', 'North America', 2021, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 58.00, 26.0, 8.0, 2.5, 1300, 120, 4.7, 44000.00, 3.00, 'In Production'),
('Ford', 'South America', 2022, 'Electric', 6500, 0, 6500, 250, 150, 0.00, 60.00, 29.0, 8.0, 2.5, 1300, 120, 4.7, 44000.00, 3.50, 'In Production'),
('Renault', 'North America', 2021, 'Electric', 4500, 0, 4500, 100, 100, 0.00, 57.50, 27.0, 7.5, 2.5, 1300, 120, 4.6, 43000.00, 3.00, 'In Production'),
('Hyundai', 'Europe', 2021, 'Diesel', 6000, 2300, 3200, 150, 200, 155.00, 53.00, 28.0, 7.5, 3.0, 1200, 190, 4.4, 34000.00, 19.50, 'In Use'),
('Chevrolet', 'Asia', 2021, 'Petrol', 7000, 2000, 5000, 300, 150, 100.00, 60.50, 27.0, 8.0, 3.0, 1100, 180, 4.5, 33000.00, 15.00, 'In Use'),
('Toyota', 'Europe', 2021, 'Diesel', 6500, 2300, 4000, 150, 200, 160.00, 55.00, 28.0, 7.5, 2.8, 1200, 190, 4.4, 34000.00, 19.50, 'In Use'),
('Hyundai', 'South America', 2022, 'Electric', 6500, 0, 6500, 300, 100, 0.00, 62.00, 26.5, 8.0, 2.5, 1300, 120, 4.7, 44000.00, 2.80, 'In Production'),
('BMW', 'Africa', 2020, 'Diesel', 5000, 2500, 2500, 100, 150, 150.00, 54.50, 29.0, 7.0, 3.0, 1200, 180, 4.3, 33000.00, 20.00, 'In Use'),
('Mercedes', 'North America', 2020, 'Petrol', 5500, 2300, 3200, 150, 200, 170.00, 55.50, 30.0, 7.5, 2.9, 1200, 190, 4.4, 34000.00, 18.00, 'In Use'),
('Chevrolet', 'South America', 2022, 'Electric', 6000, 0, 6000, 200, 100, 0.00, 61.50, 28.0, 7.0, 2.7, 1300, 120, 4.6, 43000.00, 3.10, 'In Production'),
('Renault', 'North America', 2021, 'Petrol', 6000, 2000, 4000, 150, 150, 155.00, 54.00, 28.5, 8.0, 3.0, 1200, 190, 4.3, 33000.00, 21.50, 'In Use'),
('Toyota', 'Asia', 2022, 'Electric', 6500, 0, 6500, 200, 150, 0.00, 63.00, 27.5, 8.0, 2.6, 1300, 120, 4.8, 44000.00, 2.90, 'In Production'),
('Ford', 'North America', 2021, 'Diesel', 7000, 3000, 3500, 200, 100, 160.00, 56.00, 29.0, 7.5, 2.8, 1200, 180, 4.4, 34000.00, 19.80, 'In Use'),
('Kia', 'Europe', 2020, 'Petrol', 5000, 2000, 3000, 150, 150, 165.00, 54.00, 28.5, 7.0, 3.0, 1200, 190, 4.3, 33000.00, 21.00, 'In Use'),
('Honda', 'North America', 2020, 'Electric', 4500, 0, 4500, 150, 100, 0.00, 59.50, 28.0, 7.0, 2.7, 1300, 120, 4.7, 44000.00, 3.10, 'In Production'),
('Chevrolet', 'North America', 2022, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 60.00, 29.0, 8.0, 2.8, 1300, 120, 4.6, 43000.00, 3.20, 'In Production'),
('BMW', 'Europe', 2021, 'Diesel', 6000, 2500, 3500, 150, 200, 165.00, 53.50, 29.5, 7.5, 3.0, 1200, 190, 4.4, 34000.00, 19.50, 'In Use'),
('Hyundai', 'North America', 2020, 'Electric', 6500, 0, 6500, 250, 100, 0.00, 60.00, 28.0, 8.0, 2.5, 1300, 120, 4.6, 44000.00, 3.00, 'In Production'),
('Toyota', 'Europe', 2022, 'Diesel', 6500, 2300, 4000, 150, 200, 160.00, 55.00, 28.5, 7.5, 3.0, 1200, 190, 4.3, 34000.00, 19.00, 'In Use'),
('Ford', 'Asia', 2022, 'Petrol', 6000, 2500, 3500, 150, 200, 170.00, 56.50, 30.0, 7.5, 2.8, 1200, 180, 4.4, 33000.00, 20.50, 'In Use'),
('BMW', 'South America', 2020, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 58.00, 29.0, 8.0, 2.6, 1300, 120, 4.7, 44000.00, 3.20, 'In Production'),
('Nissan', 'Europe', 2021, 'Diesel', 6000, 2500, 3500, 150, 200, 160.00, 54.50, 28.5, 7.0, 3.0, 1200, 190, 4.4, 33000.00, 20.00, 'In Use'),
('Hyundai', 'Africa', 2021, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 59.50, 27.5, 8.0, 2.5, 1300, 120, 4.6, 44000.00, 3.00, 'In Production'),
('Chevrolet', 'Europe', 2020, 'Diesel', 6000, 2300, 3200, 150, 200, 165.00, 55.50, 28.0, 7.5, 3.0, 1200, 190, 4.3, 33000.00, 20.50, 'In Use'),
('Nissan', 'South America', 2021, 'Petrol', 5000, 2300, 2700, 100, 150, 160.00, 53.00, 29.0, 7.5, 3.0, 1200, 180, 4.3, 33000.00, 19.80, 'In Use'),
('Toyota', 'Africa', 2022, 'Diesel', 5500, 2300, 3200, 100, 150, 155.00, 54.00, 28.0, 7.5, 3.0, 1200, 190, 4.4, 34000.00, 21.00, 'In Use'),
('Kia', 'North America', 2020, 'Electric', 4500, 0, 4500, 150, 100, 0.00, 60.00, 27.5, 8.0, 2.6, 1300, 120, 4.6, 44000.00, 3.10, 'In Production'),
('Hyundai', 'South America', 2021, 'Electric', 6000, 0, 6000, 150, 150, 0.00, 62.00, 28.0, 8.0, 2.5, 1300, 120, 4.7, 44000.00, 3.20, 'In Production'),
('Chevrolet', 'North America', 2020, 'Diesel', 5500, 2300, 3200, 150, 200, 165.00, 55.00, 29.0, 7.5, 3.0, 1200, 190, 4.4, 34000.00, 20.00, 'In Use'),
('Ford', 'Asia', 2021, 'Electric', 6000, 0, 6000, 150, 100, 0.00, 59.50, 27.5, 7.5, 2.8, 1300, 120, 4.6, 44000.00, 3.00, 'In Production'),
('BMW', 'South America', 2022, 'Petrol', 6500, 2500, 3500, 150, 200, 160.00, 56.00, 28.5, 7.5, 3.0, 1200, 190, 4.5, 34000.00, 20.00, 'In Use'),
('Honda', 'Asia', 2021, 'Diesel', 5000, 2300, 2700, 100, 150, 160.00, 53.00, 29.0, 7.5, 3.0, 1200, 180, 4.3, 33000.00, 19.80, 'In Use'),
('Nissan', 'North America', 2020, 'Electric', 4500, 0, 4500, 150, 100, 0.00, 58.50, 28.0, 7.5, 2.6, 1300, 120, 4.7, 44000.00, 2.90, 'In Production'),
('Hyundai', 'North America', 2022, 'Petrol', 6500, 2300, 3500, 150, 200, 160.00, 54.00, 29.0, 7.5, 3.0, 1200, 190, 4.4, 33000.00, 20.50, 'In Use'),
('Chevrolet', 'Europe', 2021, 'Diesel', 6000, 2500, 3000, 150, 200, 155.00, 53.50, 28.5, 7.5, 3.0, 1200, 180, 4.3, 34000.00, 21.00, 'In Use'),
('Toyota', 'South America', 2021, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 60.00, 28.0, 7.5, 2.7, 1300, 120, 4.6, 44000.00, 3.10, 'In Production'),
('BMW', 'North America', 2022, 'Diesel', 6500, 2500, 3500, 150, 200, 160.00, 56.00, 29.0, 8.0, 3.0, 1200, 190, 4.5, 34000.00, 19.00, 'In Use'),
('Nissan', 'Asia', 2022, 'Electric', 6000, 0, 6000, 150, 100, 0.00, 61.00, 27.5, 8.0, 2.8, 1300, 120, 4.7, 44000.00, 2.90, 'In Production'),
('Ford', 'Europe', 2022, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 59.50, 28.5, 7.5, 2.6, 1300, 120, 4.6, 43000.00, 3.20, 'In Production'),
('Honda', 'South America', 2021, 'Electric', 5000, 0, 5000, 150, 100, 0.00, 58.00, 28.0, 8.0, 2.5, 1300, 120, 4.6, 44000.00, 3.00, 'In Production'),
('Chevrolet', 'North America', 2021, 'Electric', 6000, 0, 6000, 200, 100, 0.00, 62.00, 29.0, 8.0, 2.7, 1300, 120, 4.7, 44000.00, 2.80, 'In Production'),
('BMW', 'South America', 2020, 'Petrol', 6500, 2300, 3500, 150, 200, 155.00, 53.00, 28.5, 7.5, 2.9, 1200, 190, 4.3, 33000.00, 21.20, 'In Use'),
('Ford', 'North America', 2022, 'Petrol', 6000, 2300, 3500, 150, 200, 160.00, 55.00, 29.0, 7.5, 3.0, 1200, 190, 4.4, 33000.00, 20.00, 'In Use'),
('Hyundai', 'Europe', 2020, 'Diesel', 5000, 2300, 2700, 100, 150, 145.00, 54.50, 28.5, 7.5, 3.0, 1200, 190, 4.4, 33000.00, 20.30, 'In Use'),
('Chevrolet', 'Asia', 2020, 'Electric', 6500, 0, 6500, 200, 100, 0.00, 61.00, 28.0, 8.0, 2.6, 1300, 120, 4.6, 44000.00, 3.10, 'In Production'),
('Kia', 'North America', 2022, 'Diesel', 5000, 2500, 2500, 150, 200, 150.00, 54.00, 29.0, 7.5, 2.8, 1200, 190, 4.3, 33000.00, 19.90, 'In Use'),
('Renault', 'Europe', 2021, 'Diesel', 6000, 2300, 3500, 150, 200, 155.00, 53.50, 28.5, 7.5, 3.0, 1200, 190, 4.4, 34000.00, 20.00, 'In Use'),
('Honda', 'Europe', 2022, 'Electric', 6500, 0, 6500, 150, 100, 0.00, 60.50, 28.0, 8.0, 2.7, 1300, 120, 4.7, 44000.00, 2.90, 'In Production'),
('BMW', 'North America', 2022, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 59.50, 28.5, 8.0, 2.5, 1300, 120, 4.6, 43000.00, 3.20, 'In Production'),
('Hyundai', 'North America', 2021, 'Electric', 6000, 0, 6000, 150, 100, 0.00, 58.50, 29.0, 7.5, 2.6, 1300, 120, 4.7, 44000.00, 3.10, 'In Production'),
('Toyota', 'North America', 2021, 'Diesel', 5000, 2500, 2500, 100, 150, 160.00, 54.00, 28.5, 7.5, 3.0, 1200, 180, 4.3, 33000.00, 20.00, 'In Use'),
('Nissan', 'North America', 2022, 'Electric', 6500, 0, 6500, 150, 100, 0.00, 60.00, 29.0, 7.5, 2.8, 1300, 120, 4.6, 44000.00, 2.80, 'In Production'),
('Ford', 'Europe', 2021, 'Electric', 5500, 0, 5500, 150, 100, 0.00, 59.50, 28.5, 8.0, 2.7, 1300, 120, 4.7, 43000.00, 3.20, 'In Production'),
('Chevrolet', 'North America', 2021, 'Diesel', 6500, 2300, 3500, 150, 200, 160.00, 55.50, 28.0, 7.5, 3.0, 1200, 190, 4.3, 34000.00, 20.10, 'In Use'),
('Hyundai', 'South America', 2021, 'Electric', 6500, 0, 6500, 200, 100, 0.00, 61.00, 28.5, 7.5, 2.6, 1300, 120, 4.7, 44000.00, 3.00, 'In Production'),
('BMW', 'Asia', 2021, 'Diesel', 5000, 2300, 2700, 100, 150, 155.00, 53.00, 29.0, 7.5, 3.0, 1200, 190, 4.4, 33000.00, 19.80, 'In Use'),
('Renault', 'North America', 2022, 'Electric', 6500, 0, 6500, 200, 100, 0.00, 62.00, 28.5, 7.5, 2.9, 1300, 120, 4.7, 44000.00, 3.10, 'In Production'),
('Toyota', 'Europe', 2022, 'Diesel', 6000, 2300, 3500, 150, 200, 155.00, 54.00, 28.5, 8.0, 3.0, 1200, 190, 4.4, 34000.00, 19.50, 'In Use'),
('Kia', 'South America', 2022, 'Electric', 5000, 0, 5000, 150, 100, 0.00, 59.00, 28.0, 8.0, 2.6, 1300, 120, 4.5, 44000.00, 3.20, 'In Production'),
('Chevrolet', 'South America', 2020, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 60.00, 28.5, 7.5, 2.8, 1300, 120, 4.7, 44000.00, 2.90, 'In Production'),
('Ford', 'South America', 2021, 'Diesel', 5000, 2300, 2700, 100, 150, 145.00, 53.50, 28.0, 7.5, 3.0, 1200, 180, 4.3, 33000.00, 20.10, 'In Use'),
('Honda', 'Europe', 2021, 'Electric', 6000, 0, 6000, 150, 100, 0.00, 59.50, 28.0, 7.5, 2.7, 1300, 120, 4.6, 44000.00, 2.90, 'In Production'),
('Hyundai', 'Asia', 2022, 'Diesel', 6500, 2300, 3500, 150, 200, 160.00, 54.50, 28.5, 7.5, 3.0, 1200, 190, 4.3, 33000.00, 20.30, 'In Use'),
('BMW', 'South America', 2022, 'Electric', 6500, 0, 6500, 150, 100, 0.00, 61.50, 29.0, 7.5, 2.6, 1300, 120, 4.7, 44000.00, 3.00, 'In Production'),
('Ford', 'Asia', 2021, 'Electric', 6000, 0, 6000, 150, 100, 0.00, 60.50, 28.5, 7.5, 2.8, 1300, 120, 4.7, 44000.00, 3.20, 'In Production'),
('Honda', 'North America', 2022, 'Diesel', 5000, 2300, 2700, 100, 150, 150.00, 53.50, 28.0, 7.5, 2.9, 1200, 180, 4.3, 33000.00, 20.20, 'In Use'),
('Kia', 'Europe', 2020, 'Electric', 5500, 0, 5500, 200, 100, 0.00, 59.00, 28.5, 7.5, 2.7, 1300, 120, 4.6, 44000.00, 3.10, 'In Production'),
('Hyundai', 'North America', 2022, 'Electric', 7000, 0, 7000, 200, 100, 0.00, 65.00, 30.0, 8.0, 2.5, 1400, 130, 4.8, 45000.00, 3.00, 'In Production'),
('Chevrolet', 'South America', 2021, 'Diesel', 6500, 2500, 3500, 150, 200, 160.00, 57.00, 29.5, 7.5, 2.8, 1250, 180, 4.4, 33500.00, 19.50, 'In Use'),
('Toyota', 'Europe', 2021, 'Diesel', 6000, 2300, 3500, 100, 150, 155.00, 56.50, 29.0, 7.5, 3.0, 1300, 170, 4.6, 33000.00, 20.00, 'In Use'),
('BMW', 'North America', 2021, 'Petrol', 7000, 2300, 3500, 150, 200, 170.00, 58.00, 30.0, 7.5, 3.0, 1200, 190, 4.5, 34000.00, 21.00, 'In Use'),
('Nissan', 'South America', 2022, 'Diesel', 6500, 2500, 3500, 100, 150, 160.00, 57.50, 29.5, 8.0, 2.9, 1250, 180, 4.5, 33500.00, 19.70, 'In Use'),
('Ford', 'Europe', 2020, 'Electric', 5500, 0, 5500, 150, 100, 0.00, 60.00, 29.0, 7.5, 2.7, 1300, 120, 4.7, 44000.00, 3.20, 'In Production'),
('Hyundai', 'Asia', 2021, 'Diesel', 6000, 2300, 3500, 150, 200, 160.00, 56.00, 29.0, 8.0, 2.8, 1300, 180, 4.5, 34000.00, 20.30, 'In Use'),
('Honda', 'Europe', 2022, 'Diesel', 6000, 2300, 3500, 100, 150, 160.00, 55.50, 28.5, 7.5, 3.0, 1200, 170, 4.4, 33000.00, 20.00, 'In Use'),
('BMW', 'North America', 2022, 'Electric', 6000, 0, 6000, 150, 100, 0.00, 62.00, 29.0, 8.0, 2.7, 1300, 120, 4.7, 44000.00, 2.90, 'In Production'),
('Toyota', 'North America', 2022, 'Petrol', 6500, 2500, 3500, 150, 200, 165.00, 58.50, 30.0, 8.0, 2.8, 1200, 190, 4.6, 34000.00, 21.00, 'In Use'),
('Chevrolet', 'North America', 2021, 'Electric', 7000, 0, 7000, 200, 100, 0.00, 63.00, 29.0, 7.5, 2.9, 1300, 120, 4.8, 44000.00, 3.00, 'In Production'),
('Ford', 'North America', 2022, 'Electric', 6000, 0, 6000, 150, 100, 0.00, 60.50, 29.5, 8.0, 2.7, 1300, 120, 4.7, 44000.00, 3.10, 'In Production'),
('Honda', 'Asia', 2020, 'Electric', 5500, 0, 5500, 150, 100, 0.00, 59.00, 28.5, 7.5, 2.6, 1300, 120, 4.6, 44000.00, 2.90, 'In Production'),
('BMW', 'South America', 2021, 'Electric', 6000, 0, 6000, 150, 100, 0.00, 60.00, 29.0, 7.5, 2.8, 1300, 120, 4.7, 44000.00, 3.20, 'In Production'),
('Toyota', 'South America', 2021, 'Diesel', 5500, 2300, 3000, 100, 150, 150.00, 54.50, 29.0, 7.5, 2.9, 1200, 180, 4.4, 33000.00, 20.10, 'In Use'),
('Chevrolet', 'Europe', 2021, 'Diesel', 6000, 2500, 3000, 100, 150, 160.00, 56.50, 29.5, 7.5, 2.8, 1200, 180, 4.5, 33500.00, 20.20, 'In Use'),
('Nissan', 'Europe', 2022, 'Electric', 7000, 0, 7000, 200, 100, 0.00, 64.00, 30.0, 8.0, 2.6, 1300, 120, 4.9, 45000.00, 2.80, 'In Production'),
('Kia', 'Asia', 2021, 'Diesel', 6000, 2300, 3500, 150, 200, 160.00, 56.00, 29.0, 8.0, 2.7, 1200, 190, 4.5, 34000.00, 19.80, 'In Use'),
('Ford', 'Asia', 2022, 'Petrol', 6000, 2500, 3000, 150, 200, 165.00, 58.00, 29.5, 8.0, 3.0, 1200, 190, 4.6, 34000.00, 21.10, 'In Use'),
('Hyundai', 'North America', 2021, 'Diesel', 6500, 2300, 3500, 150, 200, 155.00, 54.50, 29.0, 7.5, 2.8, 1200, 180, 4.4, 33000.00, 20.00, 'In Use'),
('Chevrolet', 'Asia', 2022, 'Electric', 6500, 0, 6500, 200, 100, 0.00, 62.50, 29.0, 7.5, 2.8, 1300, 120, 4.7, 44000.00, 3.10, 'In Production'),
('BMW', 'South America', 2020, 'Electric', 6500, 0, 6500, 200, 100, 0.00, 59.50, 29.5, 7.5, 2.7, 1300, 120, 4.6, 44000.00, 2.80, 'In Production'),
('Toyota', 'North America', 2022, 'Electric', 7000, 0, 7000, 200, 100, 0.00, 63.00, 29.0, 7.5, 2.9, 1300, 120, 4.8, 44000.00, 2.90, 'In Production'),
('Ford', 'Europe', 2021, 'Electric', 6500, 0, 6500, 200, 100, 0.00, 61.50, 28.5, 8.0, 2.6, 1300, 120, 4.6, 44000.00, 3.10, 'In Production'),
('Hyundai', 'Asia', 2022, 'Electric', 7000, 0, 7000, 150, 100, 0.00, 65.00, 30.0, 7.5, 2.6, 1300, 120, 4.7, 44000.00, 3.00, 'In Production'),
('BMW', 'North America', 2022, 'Electric', 6500, 0, 6500, 150, 100, 0.00, 62.50, 29.0, 7.5, 2.7, 1300, 120, 4.8, 44000.00, 3.00, 'In Production'),
('Toyota', 'Asia', 2021, 'Electric', 6000, 0, 6000, 150, 100, 0.00, 60.00, 29.0, 7.5, 2.8, 1300, 120, 4.7, 44000.00, 3.10, 'In Production'),
('Chevrolet', 'Europe', 2021, 'Diesel', 6000, 2300, 3500, 100, 150, 150.00, 54.50, 29.5, 7.5, 2.9, 1200, 170, 4.4, 33000.00, 19.50, 'In Use'),
('Hyundai', 'South America', 2022, 'Diesel', 6500, 2300, 3500, 150, 200, 155.00, 56.00, 29.0, 7.5, 3.0, 1200, 180, 4.5, 34000.00, 20.30, 'In Use'),
('Kia', 'South America', 2021, 'Electric', 6500, 0, 6500, 150, 100, 0.00, 60.50, 28.5, 7.5, 2.7, 1300, 120, 4.6, 44000.00, 3.00, 'In Production');

-- SHOW DATA
SELECT * FROM vehicle_data;

-- WRITE YOUR QUERIES HERE :
-- 1.Find the names of all manufacturers in regions where the total number of vehicles is more than 6000.
SELECT manufacturer from vehicle_data where number_of_vehicles > 6000;