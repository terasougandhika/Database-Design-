-- Title: An SQL scripts to show  total number of  voters are in the data set and registered voters for each of the three categories  U, R, and D
-- Author: Sougandhika Tera
-- Host: localhost    Database: voter_big
-- ------------------------------------------------------

USE voter_big;

/* total number of  voters are in the data set */

 SELECT COUNT(voter_id) AS 'Total Voter'
 FROM voter_details;
 
 /* registered voters for each of the three categories  U, R, and D */
 SELECT COUNT(*) AS 'Voter Registered', party
 FROM voter_details
 GROUP BY party HAVING COUNT(*)>1;