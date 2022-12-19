-- Sougandhika Tera
-- Creates Database and Table

-- database
DROP DATABASE IF EXISTS discounts;
CREATE DATABASE IF NOT EXISTS discounts;
USE discounts;
-- table
CREATE TABLE IF NOT EXISTS discounteditems (
id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    expired_date DATE NOT NULL,
    amount DECIMAL(10 , 2 ) NULL,
    PRIMARY KEY (id));
-- desc table
DESCRIBE discounteditems;

