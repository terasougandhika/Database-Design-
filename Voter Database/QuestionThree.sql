-- Title: An SQL scripts to show  total number of  voters have a last name that starts with the letter “Z”
-- Author: Sougandhika Tera
-- Host: localhost    Database: voter_big
-- ------------------------------------------------------

USE voter_big;

/* total number of  voters have a last name that starts with the letter “Z” */

 SELECT count(voter_id)
 
 FROM voter_details
 
 where last_name like 'Z%';
 
