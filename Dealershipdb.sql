# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          DealershipDatabase                              #
# ---------------------------------------------------------------------- #
DROP DATABASE IF EXISTS DealershipDatabase;
CREATE DATABASE IF NOT EXISTS DealershipDatabase;

USE DealershipDatabase;

# ---------------------------------------------------------------------- #
# Tables                                                                 #
# ---------------------------------------------------------------------- #
# ---------------------------------------------------------------------- #
# Add table "Dealerships"                                                #
# ---------------------------------------------------------------------- #
CREATE TABLE `Dealerships` (
  `dealership_ID` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(50),
  `address` VARCHAR(50),
  `phone` VARCHAR(12),
  PRIMARY KEY (`dealership_ID`)
);
ALTER TABLE Dealerships AUTO_INCREMENT = 101;

# ---------------------------------------------------------------------- #
# Add table "Vehicle"                                  				     #
# ---------------------------------------------------------------------- #
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

# ---------------------------------------------------------------------- #
# Add table "Inventory"                                     		     #
# ---------------------------------------------------------------------- #

CREATE TABLE `Inventory` (
  `dealership_ID` INT,
  `VIN` INT,
  PRIMARY KEY (`dealership_ID`, `VIN`),
  FOREIGN KEY (dealership_ID) REFERENCES Dealerships(dealership_ID),
  FOREIGN KEY (VIN) REFERENCES Vehicle (Vin) 
);

# ---------------------------------------------------------------------- #
# Add table "Sales_contract"                                     	     #
# ---------------------------------------------------------------------- #

CREATE TABLE `Sales_contract` (
  `Sales_ID` INT NOT NULL AUTO_INCREMENT,
  `Vin` INT,
  PRIMARY KEY (`Sales_ID`),
  FOREIGN KEY (VIN) REFERENCES Vehicle (vin) 
);
ALTER TABLE Sales_contract AUTO_INCREMENT = 2001;
-- Inserting data to tables

# ---------------------------------------------------------------------- #
# Add info into "Dealerships"                                            #
# ---------------------------------------------------------------------- #
INSERT INTO Dealerships(`name`,`address`, `phone`)
VALUES('Ann August','123 Rest st, Burlington',456778952 )
		,('Jenn Tan','788 northwind blvd, Edison', 488759267)
		,('Seban Whin','4 N. Arlington, NJ', 204568956)
		,('Contig yase','12 westend ct, irving', 657745892);

# ---------------------------------------------------------------------- #
# Add info into "Vehicle"                                                #
# ---------------------------------------------------------------------- #
INSERT INTO Vehicle (vin, `year`,`make`,`model`,`type`,`color`,`odometer`,`price`,`sold`)
VALUES (1542,2023,'Nissan', 'Altima','sedan','Blue',120,25000,'no')
		,(1154,2021,'Toyota', 'Innova','Van','Black',4200,19500,'yes')
        , (2118,1998,'Honda','Pilot','SUV','white',22500,2500,'no')
        ,(6249,2020,'Tesla','Model-y','SUV','Red',8851,38000,'yes');

# ---------------------------------------------------------------------- #
# Add info into "INVENTORY"                                                #
# ---------------------------------------------------------------------- #
INSERT INTO inventory(dealership_ID,VIN)
VALUES (101,1154)
	   ,(102,2118)
       ,(103,1542)
       ,(104,6249); 
        
# ---------------------------------------------------------------------- #
# Add info into "Sales_contract                                          #
# ---------------------------------------------------------------------- #
INSERT INTO sales_contract(VIN)
VALUES (1154)
	   ,(2118)
       ,(1542)
       ,(6249)
	;
