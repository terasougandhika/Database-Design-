-- Title: An SQL script that create database called  voter_big and table voter_address,voter_details
-- Author: Sougandhika Tera
-- Host: localhost    Database: voter_big
-- ------------------------------------------------------
DROP DATABASE IF EXISTS voter_big;
CREATE DATABASE voter_big;	
USE voter_big;



/*  Create  table voter_address*/


DROP TABLE IF EXISTS voter_address;
CREATE TABLE voter_address(
	address_id INT  NOT NULL AUTO_INCREMENT,
	address VARCHAR(300) NOT NULL,
	PRIMARY KEY (address_id)
 );
 
/*  Create  table voter_details*/

 DROP TABLE IF EXISTS voter_details;
CREATE TABLE voter_details(
	voter_id INT  NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(200) NOT NULL,
	last_name VARCHAR(200) NOT NULL,
    party ENUM('R','D','U'),
    pppSixteen ENUM('R','D'),
    ppSixteen ENUM('R','D'),
    PartyFoureen ENUM('R','D'),
    pppTwelve ENUM('R','D'),
    ppTwelve ENUM('R','D'),
	PRIMARY KEY (voter_id),
    address_id INT,
	FOREIGN KEY (address_id) references voter_address(address_id) ON DELETE CASCADE

 );
