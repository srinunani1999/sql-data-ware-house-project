/*
This script is to create DataWareHouse database and to create gold bronze and silver schema

Warning:

if database already exists it drops and recreate the database.

*/

USE master;
GO



-- check if datawarehouse database exits
-- drop and create new database if exists already

IF EXISTS (SELECT 1 from sys.databases where name='DataWareHouse')
BEGIN
    ALTER DATABASE DataWareHouse SET SINGLE_USER with ROLLBACK IMMEDIATE;
    DROP DATABASE DataWareHouse;
END;
GO

CREATE DATABASE DataWareHouse;
GO

USE DataWareHouse;
GO

-- create schema for bronze, silver and gold layer

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
Create SCHEMA gold;
GO
