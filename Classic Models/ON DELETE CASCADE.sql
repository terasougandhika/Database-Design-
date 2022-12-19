/*
Description: 
SQL script to understand the usage of ON DELETE CASCADE
Author: Sougandhika Tera
*/

DROP DATABASE IF EXISTS employers_table;
CREATE DATABASE employers_table;
USE employers_table;



DROP TABLE IF EXISTS country;
CREATE TABLE country(
    country_id INT NOT NULL AUTO_INCREMENT,
	country_name VARCHAR(128) NOT NULL,
    PRIMARY KEY (country_id)
);

INSERT  INTO country 
VALUES (NULL, 'USA'),
		(NULL, 'CANADA'),
		(NULL, 'FRANCE');

/* CREATE  table city */



DROP TABLE IF EXISTS employers;
CREATE TABLE employers (
    employer_id INT NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(128) NOT NULL,
    last_name VARCHAR(128) NOT NULL,
    PRIMARY KEY (employer_id),
    
    country_id INT ,
    FOREIGN KEY (country_id) REFERENCES country (country_id) ON DELETE CASCADE

);

INSERT  INTO employers 
VALUES (NULL, 'Tonu', 'Saha', 1),
		(NULL, 'Murphy', 'Diane', 1),
		(NULL, 'Carine', 'Schmitt', 2),
		(NULL, 'King', 'Jean', 3),
		(NULL, 'Ferguson', 'Peter', 3),
		(NULL, 'Nelson', 'Susan', 2);
 
 
/* If we delete contry id 3 , employers belongs to country_id  3 will be deleted*/        
DELETE FROM country 
WHERE
    country_id = 3;




