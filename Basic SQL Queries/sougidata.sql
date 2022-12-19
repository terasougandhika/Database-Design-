-- Title: An SQL script that demonstrates basic SQL queries.
-- Author: Sougandhika Tera
-- Host: localhost   
-- ------------------------------------------------------
--
-- Table structure for table `students`
--
-- SHOW DATABASES;
DROP DATABASE IF EXISTS sougidata;
CREATE DATABASE sougidata;
USE sougidata;
-- SELECT DATABASE();
DROP TABLE IF EXISTS students;
CREATE TABLE students (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` char(2) NOT NULL DEFAULT 'PA',
  `zip` mediumint unsigned NOT NULL,
  `phone` varchar(20) NOT NULL,
  `birth_date` date NOT NULL,
  `sex` enum('M','F') NOT NULL,
  `date_entered` timestamp NULL DEFAULT NULL,
  `lunch_cost` float DEFAULT NULL,
  `student_id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--
-- LOCK TABLES `students` WRITE;
DESCRIBE students;
INSERT INTO `students` VALUES ('Harry','Truman','htruman@aol.com','202 South St','Vancouver','WA',98660,'792-223-9810','1946-01-24','M','2022-08-31 02:05:45',3.5,1),('Shelly','Johnson','sjohnson@aol.com','9 Pond Rd','Sparks','NV',89431,'792-223-6734','1970-12-12','F','2022-08-31 02:05:52',3.5,2),('Bobby','Briggs','bbriggs@aol.com','14 12th St','San Diego','CA',92101,'792-223-6178','1967-05-24','M','2022-08-31 02:05:59',3.5,3),('Donna','Hayward','dhayward@aol.com','120 16th St','Davenport','IA',52801,'792-223-2001','1970-03-24','F','2022-08-31 02:06:06',3.5,4),('Audrey','Horne','ahorne@aol.com','342 19th St','Detroit','MI',48222,'792-223-2001','1965-02-01','F','2022-08-31 02:06:14',3.5,5),('James','Hurley','jhurley@aol.com','2578 Cliff St','Queens','NY',11427,'792-223-1890','1967-01-02','M','2022-08-31 02:06:25',3.5,6),('Lucy','Moran','lmoran@aol.com','178 Dover St','Hollywood','CA',90078,'792-223-9678','1954-11-27','F','2022-08-31 02:06:32',3.5,7),('Tommy','Hill','thill@aol.com','672 High Plains','Tucson','AZ',85701,'792-223-1115','1951-12-21','M','2022-08-31 02:06:41',3.5,8),('Andy','Brennan','abrennan@aol.com','281 4th St','Jacksonville','NC',28540,'792-223-8902','1960-12-27','M','2022-08-31 02:06:49',3.5,9);
SELECT * FROM students;
-- UNLOCK TABLES;
--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests` (
  `date` date NOT NULL,
  `type` enum('T','Q') NOT NULL,
  `maxscore` int NOT NULL,
  `class_id` int unsigned NOT NULL,
  `test_id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Dumping data for table `tests`
--
LOCK TABLES `tests` WRITE;
INSERT INTO `tests` VALUES ('2014-08-25','Q',15,1,1),('2014-08-27','Q',15,1,2),('2014-08-29','T',30,1,3),('2014-08-29','T',30,2,4),('2014-08-27','Q',15,4,5),('2014-08-29','T',30,4,6);
UNLOCK TABLES;
--
-- Table structure for table `classes`
--
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `name` varchar(30) NOT NULL,
  `class_id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Dumping data for table `classes`
--
LOCK TABLES `classes` WRITE;
INSERT INTO `classes` VALUES ('English',1),('Speech',2),('Literature',3),('Algebra',4),('Geometry',5),('Trigonometry',6),('Calculus',7),('Earth Science',8),('Biology',9),('Chemistry',10),('Physics',11),('History',12),('Art',13),('Gym',14);
UNLOCK TABLES;
--
-- Table structure for table `scores`
--
DROP TABLE IF EXISTS `scores`;
CREATE TABLE `scores` (
  `student_id` int unsigned NOT NULL,
  `test_id` int unsigned NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`test_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Dumping data for table `scores`
--
LOCK TABLES `scores` WRITE;
INSERT INTO `scores` VALUES (1,1,15),(2,1,15),(3,1,14),(4,1,15),(5,1,14),(6,1,13),(7,1,13),(8,1,14),(9,1,15),(10,1,15),(1,2,14),(2,2,14),(3,2,14),(4,2,14),(5,2,13),(6,2,13),(7,2,13),(9,2,13),(10,2,13),(1,3,28),(2,3,26),(3,3,26),(4,3,25),(5,3,26),(6,3,24),(7,3,25),(8,3,26),(9,3,28),(10,3,26),(1,4,29),(2,4,28),(3,4,26),(4,4,27),(5,4,27),(6,4,26),(7,4,27),(8,4,23),(9,4,27),(10,4,27),(1,5,15),(2,5,14),(3,5,13),(4,5,15),(5,5,13),(6,5,13),(7,5,13),(8,5,12),(9,5,14),(10,5,12),(1,6,27),(2,6,26),(3,6,26),(4,6,27),(5,6,27),(6,6,26),(8,6,24),(9,6,27),(10,6,22);
UNLOCK TABLES;
--
-- Table structure for table `absences`
--
DROP TABLE IF EXISTS `absences`;
CREATE TABLE `absences` (
  `student_id` int unsigned NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`student_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Dumping data for table `absences`
--
LOCK TABLES `absences` WRITE;
INSERT INTO `absences` VALUES (7,'2014-08-29'),(8,'2014-08-27');
UNLOCK TABLES;

 SELECT * FROM students;
 SELECT FIRST_NAME, last_name 
	FROM students;
-- RENAME TABLE 
	-- absences to absence,
	-- classes to classe,
	-- scores to score,
	-- students to student,
	-- tests to test;
SELECT first_name, last_name, state 
	FROM students
	WHERE state="WA";
SELECT first_name, last_name, birth_date
	FROM students
	WHERE YEAR(birth_date) >= 1965;
SELECT first_name, last_name, birth_date
	FROM students
	WHERE MONTH(birth_date) = 2 OR state="CA";
SELECT last_name, state, birth_date
	FROM students
	WHERE DAY(birth_date) >= 12 && (state="CA" || state="NV");
SELECT last_name
	FROM students
	WHERE last_name IS NULL;
    SELECT last_name
	FROM students
	WHERE last_name IS NOT NULL;
SELECT first_name, last_name
	FROM students
	ORDER BY last_name;
 SELECT first_name, last_name, state
	FROM students
	ORDER BY state DESC, last_name ASC;
SELECT first_name, last_name
	FROM students
	LIMIT 5;
SELECT first_name, last_name
	FROM students
	LIMIT 5, 10;
SELECT CONCAT(first_name, " ", last_name) AS 'Name',
	CONCAT(city, ", ", state) AS 'Hometown'
	FROM students;
SELECT last_name, first_name
	FROM students
	WHERE first_name LIKE 'D%' OR last_name LIKE '%n';
SELECT last_name, first_name
	FROM students
	WHERE first_name LIKE '___y';
SELECT DISTINCT state
	FROM students
	ORDER BY state;
SELECT COUNT(DISTINCT state)
	FROM students;
SELECT COUNT(*)
	FROM students;
SELECT COUNT(*)
	FROM students
	WHERE sex='M';
SELECT sex, COUNT(*)
	FROM students
	GROUP BY sex;
SELECT MONTH(birth_date) AS 'Month', COUNT(*)
	FROM students
	GROUP BY Month
	ORDER BY Month;
 SELECT state, COUNT(state) AS 'Amount'
	FROM students
	GROUP BY state
	HAVING Amount > 1;
SELECT
	test_id AS 'Test',
	MIN(score) AS min,
	MAX(score) AS max,
	MAX(score)-MIN(score) AS 'range',
	SUM(score) AS total,
	AVG(score) AS average
	FROM scores
	GROUP BY test_id;
SELECT * FROM absences; 

	DESCRIBE scores;
	
	SELECT student_id, test_id
	FROM scores
	WHERE student_id = 6;
	
	INSERT INTO scores VALUES
	(6, 3, 24);

	DELETE FROM absences 
	WHERE student_id = 6;
 ALTER TABLE absences
	ADD COLUMN test_taken CHAR(1) NOT NULL DEFAULT 'F'
	AFTER student_id; 
ALTER TABLE absences
	MODIFY COLUMN test_taken ENUM('T','F') NOT NULL DEFAULT 'F';
ALTER TABLE absences
	DROP COLUMN test_taken;
ALTER TABLE absences
	CHANGE student_id student_id INT UNSIGNED NOT NULL;
 SELECT *
    FROM scores
    WHERE student_id = 4;
SELECT first_name, last_name, birth_date
	FROM students
	WHERE birth_date 
	BETWEEN '1960-1-1' AND '1970-1-1';
 SELECT first_name, last_name
	FROM students
	WHERE first_name IN ('Bobby', 'Lucy', 'Andy');
 SELECT student_id, date, score, maxscore
	FROM tests, scores
	WHERE date = '2014-08-25'
	AND tests.test_id = scores.test_id;
SELECT scores.student_id, tests.date, scores.score, tests.maxscore
	FROM tests, scores
	WHERE date = '2014-08-25'
	AND tests.test_id = scores.test_id;
SELECT CONCAT(students.first_name, " ", students.last_name) AS Name, 
	tests.date, scores.score, tests.maxscore
	FROM tests, scores, students
	WHERE date = '2014-08-25'
	AND tests.test_id = scores.test_id
	AND scores.student_id = students.student_id;
SELECT students.student_id, 
	CONCAT(students.first_name, " ", students.last_name) AS Name,
	COUNT(absences.date) AS Absences
	FROM students, absences
	WHERE students.student_id = absences.student_id
	GROUP BY students.student_id;
SELECT students.student_id, 
	CONCAT(students.first_name, " ", students.last_name) AS Name,
	COUNT(absences.date) AS Absences
	FROM students LEFT JOIN absences
	ON students.student_id = absences.student_id
	GROUP BY students.student_id;
SELECT students.first_name, 
	students.last_name,
	scores.test_id,
	scores.score
	FROM students
	INNER JOIN scores
	ON students.student_id=scores.student_id
	WHERE scores.score <= 15
	ORDER BY scores.test_id;

