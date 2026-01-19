-- Create Database :
-- Creates a new database with the specified name
CREATE DATABASE college;

-- Creates a database only if it does NOT exist
-- Prevents error if the database already exists
CREATE DATABASE IF NOT EXISTS college;


-- Select Database :
-- Sets the specified database as the current working database
USE college;


-- Show Databases :
-- Lists all databases present on the MySQL server
SHOW DATABASES;

-- Show Tables :
-- Lists all tables present in the current working database
SHOW TABLES;


-- Check Current Database
-- Displays the name of the database currently in use
SELECT DATABASE();


-- Delete Database :
-- Permanently deletes the database along with all its tables and data
DROP DATABASE college;


-- Prevents error if the database does not exist
DROP DATABASE IF EXISTS college;