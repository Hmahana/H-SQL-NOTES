SELECT * FROM practice.vehicle_data;


-- BASIC QUESTIONS (15 QUESTIONS) :


-- 1. Find the names of all manufacturers in regions where the total number of vehicles is more than 6000.
SELECT manufacturer from vehicle_data where number_of_vehicles > 6000;
-- 2. Show the manufacturer that produces the vehicle with the highest CO2 emissions.
SELECT manufacturer,co2_emissions_mt FROM vehicle_data
WHERE co2_emissions_mt=(SELECT MAX(co2_emissions_mt)FROM vehicle_data);
-- 3. Find the region with the highest average age of vehicles.
SELECT REGION ,average_vehicle_age FROM vehicle_data
WHERE average_vehicle_age=(SELECT MAX(average_vehicle_age)FROM vehicle_data);
-- 4. List the IDs of all vehicles whose growth rate is lower than the average growth rate.
SELECT vehicle_id ,growth_rate FROM vehicle_data
WHERE growth_rate<(SELECT AVG(growth_rate) FROM vehicle_data);
-- 5. Show all manufacturers making electric vehicles in regions with more than 5,000
-- commercial vehicles.
SELECT manufacturer,region,fuel_type,commercial_vehicles from vehicle_data
where fuel_type="Electric" and commercial_vehicles>5000;
-- 6. Retrieve the names of manufacturers whose vehicles have a base price greater than the
-- average base price.
SELECT manufacturer,base_price from vehicle_data
WHERE base_price>(SELECT AVG(base_price) FROM vehicle_data);
-- 7. List regions where the number of heavy-duty vehicles is less than the number of
-- two-wheelers.
select region,heavy_duty_vehicles,two_wheelers from vehicle_data
where heavy_duty_vehicles<two_wheelers;
-- 8. Find manufacturers of vehicles whose market share is higher than the average market
-- share for their lifecycle stage.
SELECT manufacturer,market_share from vehicle_data
where market_share>( select avg(market_share) from vehicle_data);
-- 9. Show vehicle IDs where the ratings are higher than the average ratings across all
-- vehicles.
SELECT vehicle_id from vehicle_data
where ratings>( select avg(ratings) from vehicle_data);
-- 10. Find the region where the sum of passenger vehicles is the highest.
select region from vehicle_data
where passenger_vehicles=(select max(passenger_vehicles) from vehicle_data);
-- 11. Retrieve manufacturers who have produced vehicles in the region with the most
-- scrapped vehicles.
select manufacturer,region,scrapped_vehicles from vehicle_data
where scrapped_vehicles=(select max(scrapped_vehicles) from vehicle_data);
-- 12. List vehicle IDs with energy consumption higher than the average energy consumption in
-- their region.
SELECT vehicle_id,energy_consumption_gwh from vehicle_data
where energy_consumption_gwh>( select avg(energy_consumption_gwh) from vehicle_data);
-- 13. Find all manufacturers who make vehicles with pollution percentages below the global
-- average.
select manufacturer from vehicle_data
where pollution_percentage<(select avg(pollution_percentage) from vehicle_data);
-- 14. Show regions with the number of new registrations lower than the system-wide average.
select region,new_registrations from vehicle_data
where new_registrations<(select avg(new_registrations) from vehicle_data);
-- 15. Retrieve vehicle IDs where the number of commercial vehicles is at least double the
-- number of heavy-duty vehicles.
select vehicle_id from vehicle_data
where commercial_vehicles>=2* (heavy_duty_vehicles) ;


-- Intermediate Questions (5 Questions)



-- 16. Find manufacturers whose market share is above the average market share in their
-- region.
select manufacturer,region from vehicle_data
where market_share>( select avg(market_share) from vehicle_data);
-- 17. Show all regions where the number of passenger vehicles is more than the number of
-- two-wheelers.
select region,passenger_vehicles,two_wheelers from vehicle_data
where passenger_vehicles>two_wheelers;
-- 18. Find manufacturers using less energy than the average energy used by vehicles with the
-- same fuel type.
select manufacturer from vehicle_data
where energy_consumption_gwh<(select avg(energy_consumption_gwh) from vehicle_data 
as sub where sub.fuel_type=vehicle_data.fuel_type);

select manufacturer,fuel_type, energy_consumption_gwh from vehicle_data as vd
where vd.energy_consumption_gwh<(select avg(energy_consumption_gwh) from vehicle_data
where fuel_type=vd.fuel_type) order by energy_consumption_gwh desc;

-- 19. List vehicle IDs with a base price higher than the base price of the oldest vehicle.
select vehicle_id,base_price from vehicle_data
where base_price>(select base_price from vehicle_data 
where manufacturer_year=(select min(manufacturer_year) from vehicle_data));
select vehicle_id,base_price from vehicle_data
where base_price>(select base_price from vehicle_data
order by manufacturer_year asc limit 1);
-- 20. Show regions where the number of scrapped vehicles is more than the number of new
-- registrations.
select region from vehicle_data
where scrapped_vehicles>new_registrations;


-- Advanced Questions (5 Questions)


-- 21. Find manufacturers who produce at least 20% of all heavy-duty vehicles in the database.
select manufacturer from vehicle_data
group by manufacturer having sum(heavy_duty_vehicles) >= 0.2*(select sum(heavy_duty_vehicles) 
from vehicle_data);
-- 22. Show manufacturers whose market share is in the bottom 25% of all manufacturers.

SELECT 
    manufacturer,
    market_share
FROM (
    SELECT 
        manufacturer,
        market_share,
        ROW_NUMBER() OVER (ORDER BY market_share) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM vehicle_data
) AS RankedManufacturers
WHERE row_num <= total_count * 0.25
ORDER BY market_share;
SELECT 
        manufacturer,
        market_share,
        ROW_NUMBER() OVER (ORDER BY market_share) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM vehicle_data;

-- 23. Find regions where the pollution percentage is higher than the system-wide average.
select region,pollution_percentage from vehicle_data
where pollution_percentage>(select avg(pollution_percentage) from vehicle_data);
-- 24. Show manufacturers whose ratings are higher than the best rating for CNG vehicles.
select manufacturer from vehicle_data
where ratings>(select max(ratings) from vehicle_data where fuel_type="CNG");
-- 25. List regions where the number of two-wheelers is more than the combined number of
-- commercial and passenger vehicles.
select region from vehicle_data
where two_wheelers>(commercial_vehicles+ passenger_vehicles);



-- Questions with Aggregates (5 Questions)


-- 26. Find regions where the average growth rate of vehicles is higher than the global average
-- growth rate.
select region, avg(growth_rate) as avrg from vehicle_data
group by region
having avrg>(select avg(growth_rate) from vehicle_data);
select avg(growth_rate) from vehicle_data;
-- 27. Show lifecycle stages where the average base price is higher than the overall average
-- base price.
select lifecycle, avg(base_price) as avrg from vehicle_data
group by lifecycle
having avrg>(select avg(base_price) from vehicle_data);
-- 28. List manufacturers with energy consumption above the average for vehicles in the same
-- lifecycle stage.
select manufacturer from vehicle_data as vd
where energy_consumption_gwh>(select avg(energy_consumption_gwh) from vehicle_data
where lifecycle=vd.lifecycle);
select avg(energy_consumption_gwh) as avrg,lifecycle from vehicle_data
group by lifecycle;
-- 29. Find the top 3 manufacturers with the most passenger vehicles.
select manufacturer,passenger_vehicles from vehicle_data
where passenger_vehicles=(select max(passenger_vehicles) from vehicle_data) limit 3;
-- 30. Show the region with the lowest total CO2 emissions.
select region from vehicle_data
where co2_emissions_mt=(select min(co2_emissions_mt) from vehicle_data);


-- Complex Questions (5 Questions)


-- 31. Find regions where the number of heavy-duty vehicles is more than the total vehicles in
-- any other region
select region,heavy_duty_vehicles,number_of_vehicles from vehicle_data
where heavy_duty_vehicles> (select max(number_of_vehicles) from vehicle_data where region="Africa");
select  distinct region from vehicle_data;
-- 32. Show manufacturers with a base price higher than the base price of any diesel vehicle.
SELECT DISTINCT manufacturer
FROM vehicle_data
WHERE base_Price > (SELECT MAX(base_Price) FROM vehicle_data WHERE fuel_type = 'Diesel');

SELECT DISTINCT manufacturer
FROM vehicle_data
WHERE base_Price > any (SELECT base_Price FROM vehicle_data WHERE fuel_type = 'Diesel');
SELECT base_Price FROM vehicle_data WHERE fuel_type = 'Diesel';

-- 33. List regions where the number of scrapped vehicles is more than the total new
-- registrations across all regions.
select region from vehicle_data
where scrapped_vehicles>(select sum(new_registrations) from vehicle_data);


SELECT region,SUM(scrapped_vehicles) as total
FROM vehicle_data
GROUP BY region
HAVING total > (
    SELECT SUM(new_registrations)
    FROM vehicle_data
);

-- 34. Find manufacturers whose market share is below the median market share.
select manufacturer from vehicle_data
where market_share<(select median(market_share) from vehicle_data);


SELECT market_share, 
           ROW_NUMBER() OVER (ORDER BY market_share) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM vehicle_data;
-- 35. Show the top 5 regions with the highest total energy consumption, sorted from highest to
-- lowest.
select region , max(energy_consumption_gwh) as max from vehicle_data
group by region order by max desc limit 5;


-- Bonus Question
-- ● Calculate the total pollution percentage for each region and list regions where it is higher than the system-wide average.
select region,sum(pollution_percentage) as total from vehicle_data
group by region
having total>(select avg(pollution_percentage) from vehicle_data);