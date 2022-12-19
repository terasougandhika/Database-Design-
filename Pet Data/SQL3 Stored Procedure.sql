/* Name: Sougandhika Tera
Topic: Query which counts number of pets from each pet type inthe given dataset using Stored Procedure
*/

#uses sougi_petdata database
USE Sougi_Petdata

#store procedure syntax
DELIMITER //
#creates procedure and selects the given query
CREATE PROCEDURE SougiPet_Count()
BEGIN
	SELECT Count(*) as Total,PetType
    FROM SougiPet
    GROUP BY PetType;
END //
DELIMITER ;

#calls requried query from given procedure
Call Sougi_Petdata.SougiPet_Count;

