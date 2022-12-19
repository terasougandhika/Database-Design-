-- Title: An SQL scripts to show  voters share the same first and last names and total number of voters share the same first and last names
-- Author: Sougandhika Tera
-- Host: localhost    Database: voter_big
-- ------------------------------------------------------

USE voter_big;

/* voters share the same first and last names */

SELECT COUNT(*) AS total, first_name,last_name
FROM voter_details
GROUP BY first_name,last_name 
HAVING COUNT(*)>1;
 
 /* total number of voters share the same first and last names */
 SELECT COUNT(*) AS TOTAL
FROM voter_details AS t
WHERE EXISTS (SELECT 1 
              FROM voter_details AS t2
              WHERE t2.first_name = t.first_name AND t2.last_name = t.last_name AND
                    t2.voter_id <> t.voter_id
             );