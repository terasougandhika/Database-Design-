-- Title: An SQL scripts to show   the voters (first name, last name, address) who voted the same way in every primary election
-- Author: Sougandhika Tera
-- Host: localhost    Database: voter_big
-- ------------------------------------------------------

USE voter_big;

/* the voters (first name, last name, address) who voted the same way in every primary election */

SELECT first_name,last_name, pppSixteen,ppSixteen,PartyFoureen,pppTwelve,ppTwelve,address
FROM voter_details

INNER JOIN voter_address ON voter_details.address_id=voter_address.address_id
WHERE (pppSixteen,ppSixteen,PartyFoureen,pppTwelve,ppTwelve) = ( ('D', 'D', 'D', 'D', 'D') ) 
OR  (pppSixteen,ppSixteen,PartyFoureen,pppTwelve,ppTwelve) = ( ('R', 'R', 'R', 'R', 'R') )  

;
