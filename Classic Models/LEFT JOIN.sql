
/*
Description: 
 SQL script to understand the usage of LEFT JOIN
Author: Sougandhika Tera
*/

use classicmodels;

#using left join  
SELECT 
    customerName, checkNumber, amount,orderDate,productCode,productName
FROM customers 
    LEFT JOIN payments USING (customerNumber)
    LEFT JOIN orders USING (customerNumber)
    LEFT JOIN orderdetails USING (orderNumber)
    LEFT JOIN products USING (productCode)
ORDER BY productName;
