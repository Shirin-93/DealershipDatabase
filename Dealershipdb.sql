/**********************************************************
NEW PROJECT :-   DEALERSHIPDATABASE
**********************************************************/
DROP DATABASE IF EXISTS DealershipDatabase;
CREATE DATABASE IF NOT EXISTS DealershipDatabase;

USE DealershipDatabase;
CREATE TABLE `Dealerships` (
  `dealership_id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(50),
  `address` VARCHAR(50),
  `phone` VARCHAR(12),
  PRIMARY KEY (`dealership_id`)
);
ALTER TABLE Dealerships AUTO_INCREMENT = 101;
CREATE TABLE `Vehicle` (
  `Vin` INT,
  `year` INT,
  `Make` VARCHAR(25),
  `Model` VARCHAR(25),
  `type` VARCHAR(10),
  `color` VARCHAR(25),
  `odometer` INT,
  `price` DOUBLE,
  `Sold` CHAR(5),
  PRIMARY KEY (`Vin`)
);
CREATE TABLE `Inventory` (
  `dealership_ID` INT,
  `VIN` INT,
  PRIMARY KEY (`dealership_ID`, `VIN`),
  FOREIGN KEY (dealership_ID) REFERENCES Dealerships(dealership_ID),
  FOREIGN KEY (VIN) REFERENCES Vehicle (vin) 
);
-- Inserting data to tables

INSERT INTO Dealerships(`name`,`address`, `phone`)
VALUES('Ann August','123 Rest st, Burlington',456778952 )
		,('Jenn Tan','788 northwind blvd, Edison', 488759267)
		,('Seban Whin','4 N. Arlington, NJ', 204568956)
		,('Contig yase','12 westend ct, irving', 657745892);

INSERT INTO Vehicle (vin, `year`,`make`,`model`,`type`,`color`,`odometer`,`price`,`sold`)
VALUES (1542,2023,'Nissan', 'Altima','sedan','Blue',120,25000,'no')
		,(1154,2021,'Toyota', 'Innova','Van','Black',4200,19500,'yes')
        , (2118,1998,'Honda','Pilot','SUV','white',22500,2500,'no')
        ,(6249,2020,'Tesla','Model-y','SUV','Red',8851,38000,'yes');
