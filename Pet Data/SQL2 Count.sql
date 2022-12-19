/* Name: Sougandhika Tera
Topic: Query which counts number of pets from each pet type inthe given dataset
*/

#uses required database
Use sougi_petdata;

#query to select count and pettype from table grouping by pettype
SELECT COUNT(*) as Total, PetType 
FROM sougiPet
GROUP BY PetType; 