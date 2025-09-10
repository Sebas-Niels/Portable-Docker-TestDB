-- create the database if it doesn't exist
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Playground')
BEGIN
    CREATE DATABASE Playground;
END
GO

-- create table
USE Playground;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cars]') AND type in (N'U'))
BEGIN
    CREATE TABLE dbo.Cars (
        Licenseplate NVARCHAR(50) PRIMARY KEY,
        Make NVARCHAR(50),
        Model NVARCHAR(50),
        Color NVARCHAR(50)
    );
END
GO
