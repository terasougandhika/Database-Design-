
/*
Description: 
 SQL script to understand the usage of ORDER BY clause
Author: Sougandhika Tera
*/

#using order by
use classicmodels;
SELECT customerName, country
FROM customers
ORDER BY FIELD(country, 'USA', 'Norway', 'France');