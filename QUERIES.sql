USE DEALERSHIPDATABASE;
-- 1 GET ALL DEALERSHIPS
SELECT *
FROM dealerships;

-- 2 FIND ALL VEHICLES FOR A SPECIFIC DEALERSHIP
SELECT v.make
	, v.model
    ,i.dealership_ID
FROM Vehicle AS v
INNER JOIN inventory AS i
	ON v.vin = i.vin
WHERE dealership_ID = 101;

-- 3 FIND A CAR BY VIN
SELECT vin
	, make
    ,model
    ,price
FROM vehicle 
WHERE vin = 2118;

-- 4 Find the dealership where a certain car is located by vin
SELECT d.name
	,d.address
    , v.make
    ,v.model
FROM dealerships AS d
INNER JOIN inventory as i 
	ON d.dealership_ID = i.dealership_ID
INNER JOIN vehicle AS v
	ON i.vin = v.vin
WHERE v.vin = 6249;

-- 5 FIND ALL DEALERSHIPS THAT HAVE A CERTAIN CAR TYPE
SELECT d.name
	, d.address
    , v.make
    ,v.model
FROM dealerships AS d
INNER JOIN inventory as i 
	ON d.dealership_ID = i.dealership_ID
INNER JOIN vehicle AS v
	ON i.vin = v.vin
WHERE v.model = 'Altima';

-- 6 GET ALL SALES INFORMATION FOR A SPECIFIC DEALER FOR SPECIFIC DATE RANGE
SELECT d.name
	, d.address
    , d.phone
FROM dealerships AS d
INNER JOIN inventory AS i
	ON d.dealership_ID = i.dealership_ID
INNER JOIN vehicle AS v
	ON i.VIN = v.vin
INNER JOIN sales_contract AS sc
	ON v.vin = sc.vin
where d.dealership_ID = 103;
    