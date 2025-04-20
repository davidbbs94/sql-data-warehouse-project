/* 
=========================
Create Database and Schemas
=============================
Script Purpose:
	This script creates a new database names 'DataWarehouse' after checking if it already exists. 
	If the database already exissts, it is dropped and recreated. Additionally, the script sets yup three schemas wihtin 
	the database: 'bronze', 'silver', and 'gold'.
WARNING:
	 Running this script will drop the entire 'DataWarehosue' database if it exists. 
	 All data in the database will be permanently deleted. Proceed witgh caution 
	 and ensure you have proper backups before running this script.
	 */ 

USE master; -- this is how you create databases
GO
-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO
-- Create the 'Datawarehouse' Database

CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO
-- Create the schema
CREATE SCHEMA bronze;
Go
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
Go -- it's a separator, tells SQL first execute the first command, then execute the next one
