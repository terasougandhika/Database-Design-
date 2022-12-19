/* Name: Sougandhika Tera
Topic: Creating a table that holds my dataset
*/

#drops database if already exits
DROP DATABASE IF EXISTS sougi_petdata;

#Creates database
CREATE DATABASE sougi_petdata;
USE sougi_petdata;

#creates table to hold dataset
CREATE TABLE sougiPet(
FirstName VARCHAR(50) NOT NULL, 
LastName VARCHAR(50) NOT NULL,
Address VARCHAR(100) NOT NULL,
PetType ENUM ("Dog","Zebra","Cat","Python") NOT NULL, 
PetName VARCHAR(20) NOT NULL 
); 

#shows table information displaying the content in the dataset
#DESCRIBE sougiPet;
SELECT * FROM sougiPet

