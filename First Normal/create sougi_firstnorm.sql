-- Title: An SQL script that create database called  firstnorm and tables voterEmail, voterData
-- Author: Sougandhika Tera 
-- Host: localhost    Database: Sougi_Firstnorm



DROP DATABASE IF EXISTS sougi_firstnorm;
CREATE DATABASE sougi_firstnorm;
USE sougi_firstnorm;

/* CREATE  table voterEmail */

DROP TABLE IF EXISTS voterEmail;
CREATE TABLE voterEmail (
    email_id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(128) NOT NULL,
    PRIMARY KEY (email_id)
);

/* CREATE  table voterData */

DROP TABLE IF EXISTS voterData;
CREATE TABLE voterData (
    voter_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(128) NOT NULL,
    last_name VARCHAR(128) NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(40) NOT NULL,
    state CHAR(2) NOT NULL,
    PRIMARY KEY (voter_id),
    email_id INT,
    FOREIGN KEY (email_id)
        REFERENCES voterEmail (email_id)
        ON DELETE CASCADE
);
