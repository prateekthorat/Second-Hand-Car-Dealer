
-- ReadData----
SELECT*FROM car_database;
--	Total Cars : To get a count of total records--
select count(*) from car_database;
-- The manger asked the employee How manycars will be available in 2023 ?
SELECT count(*) from car_database 
where year=2023;
-- The manger asked the employee How manycars will be available in 2020,2021,2022?
SELECT count(*) from car_database 
where year in (2022,2021,2020)
group by year;
--  Clint asked me to print the total of all cars by year.I dont see all the details---
SELECT count(*) from car_database
group by year;
-- Clint asked to cars dealer agent How many diesel cars will there be in 2020?
SELECT count(*) from car_database
where year=2020 and fuel="Diesel";
-- Clint requested to cars dealer agent How many petrol cars will there be in 2020?
SELECT count(*) from car_database
where year=2020 and fuel="petrol";
-- The manager told the employee to give a print all the fuel cars (petrol,diesel and CNG) come by all year--
SELECT count(*) from car_database
where fuel="petrol"
group by year;
SELECT count(*) from car_database
where fuel="diesel"
group by year;
SELECT count(*) from car_database
where fuel="CNG"
group by year;
-- Manager said there were more than 100 cars in a given year,which year had more than 100 cars;
SELECT count(*),year from car_database
group by year having count(*)>100;
-- The manager said  to the employee All cars count details between 2015 and 2023?
SELECT count(*) from car_database
where year between 2015 and 2023;
-- The manager said  to the employee All cars count details between 2015 and 2023? We need complete list--
SELECT *from car_database
where year between 2015 and 2023;


