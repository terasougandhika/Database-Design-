-- Title: An SQL script that insert data into  database called  firstnorm and tables voterEmail, voterData
-- Author: Sougandhika Tera 
-- Host: localhost    Database: Sougi_Firstnorm


/* INSERT DATA to   table voterEmail */
use sougi_firstnorm;
INSERT INTO voterEmail (email_id, email) VALUES 

(NULL, "marys@gmail.com"),
(NULL, "marys@example.com"),
(NULL, "Franzk@gmail.com"),
(NULL, "SadCockroach@example.com"),
(NULL, "chemist@gmail.com"),
(NULL, "periodictable@example.com")
;

/* INSERT DATA to  table voterData */

INSERT INTO voterData (voter_id, first_name, last_name, street, city, state, email_id) VALUES 

(NULL, "Mary", "Smith", "123 Main Street", "Waltham", "MA", 1),
(NULL, "Franz", "Kafka", "PO Box 13", "Red Knuckle", "MT", 2),
(NULL, "Primo", "Levy", "123 Elm Street", "Milford", "NH", 3)

;

