# DealershipDatabase
Data base script using MySQL 

# Introduction
The idea of this project is to create a data base to pull the sales details of cars in each dealership. The important element of this project is to create tables using the given information and then creating a relationship between the tables to fetch the data required. The script is completely self contained and we should be able to re-run it multiple times to create or re-create the database. 
"C:\LearnToCode_Workshops\Workbook7\DealershipDatabase\relationship_table.png"

### Dealership table:
This is the main table of the application which leads to the list of dealers and the contact details. There is an auto incremented dealership ID which is unique to the dealers.
"C:\LearnToCode_Workshops\Workbook7\DealershipDatabase\database_table.png"

### Inventory table:
This table connects to the unique dealership_ID to the specified VIN number of cars which is available to sold or lease and the cars which was previously sold by the dealer.
"C:\LearnToCode_Workshops\Workbook7\DealershipDatabase\Inventory_Table.png"

### Vehicle table:
The contents of the table includes the information about the vehicles. The informations includes the unique VIN number, year,Make and model, type, color, odometer reading price and also the selling information.
"C:\LearnToCode_Workshops\Workbook7\DealershipDatabase\vehicle_table.png"

### Sales contract table:
This is the table where the unique Sales_ID and VIN ID is linked with a one to many relation.
"C:\LearnToCode_Workshops\Workbook7\DealershipDatabase\sales_contract.png"

## What this database can do?
#### 1. Get all dealership
"C:\LearnToCode_Workshops\Workbook7\DealershipDatabase\query1.png"
#### 2. Find all vehicles for a specific dealership
"C:\LearnToCode_Workshops\Workbook7\DealershipDatabase\query2.png"
#### 3. Find a car by VIN
"C:\LearnToCode_Workshops\Workbook7\DealershipDatabase\query3.png"
#### 4. Find the dealership where a certain car is located by VIN 
"C:\LearnToCode_Workshops\Workbook7\DealershipDatabase\query4.png"
#### 5. Find all dealership that have a certain car type
"C:\LearnToCode_Workshops\Workbook7\DealershipDatabase\query5.png"
#### 6. Get all sals information for a specific dealer 
"C:\LearnToCode_Workshops\Workbook7\DealershipDatabase\query6.png"





