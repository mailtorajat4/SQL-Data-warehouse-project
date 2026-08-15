/*
=========================================================================
Create Database and schemas
=========================================================================
Script Purpose:
  This Script creates a new database named "DataWarehouse" after checking if it already exists.
  If the database exists, it is droped and recreated. Aditionally, the script sets up three schemas within the database
  'bronze', 'silver and 'gold'.

WARNING:
   Running this script will drop the entire 'DataWarehouse' database if it exists.
   All data in the database will be permanently deleted. 
   Proceed with caution and ensure you have backups before running the script.
*/

USE master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
     ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
     DROP DATABASE Datawarehouse;
END;
GO
--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
