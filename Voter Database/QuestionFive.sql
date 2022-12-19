-- Title: An SQL scripts to show  total voters who were registered as undecided voted “R” in the most recent primary election and 
-- total voters who were registered as undecided voted “D” in the most recent primary election
-- Author: Sougandhika Tera
-- Host: localhost    Database: voter_big
-- ------------------------------------------------------

USE voter_big;

/* total voters who were registered as undecided voted “R” in the most recent primary election */

SELECT COUNT(voter_id)
FROM voter_details
WHERE party LIKE 'U' AND ppSixteen LIKE 'R';


/* total voters who were registered as undecided voted “D” in the most recent primary election */

SELECT COUNT(voter_id)
FROM voter_details
WHERE party LIKE 'U' AND ppSixteen LIKE 'D';