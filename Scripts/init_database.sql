/*
-------------------------------------------------------------
Create Database and Schemas
-------------------------------------------------------------
Script Purpose:
  This script creates a new database called 'DataWarehouse' after checking if it alreday exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database:
  'Bronze','Silver','Gold'*/


Use master;
GO


-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE ;
    DROP DATABASE DataWarehouse;
END;
GO


--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA Bronze;

GO

CREATE SCHEMA Silver;

GO

CREATE SCHEMA Gold;

GO
