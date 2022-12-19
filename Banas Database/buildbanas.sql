-- Title: An SQL script that create database called  banas and tables students, classes, absences, tests,  scores
-- Author: Sougandhika Tera
-- Host: localhost    Database: banas
-- ------------------------------------------------------
DROP DATABASE IF EXISTS sougidata;
CREATE DATABASE sougidata;
USE sougidata;


-- Table structure for table students

DROP TABLE IF EXISTS students;
CREATE TABLE students (
  first_name varchar(30) NOT NULL,
  last_name varchar(30) NOT NULL,
  email varchar(60) DEFAULT NULL,
  street varchar(50) NOT NULL,
  city varchar(40) NOT NULL,
  state char(2) NOT NULL DEFAULT 'PA',
  zip mediumint unsigned NOT NULL,
  phone varchar(20) NOT NULL,
  birth_date date NOT NULL,
  sex enum('M','F') NOT NULL,
  date_entered timestamp NULL DEFAULT NULL,
  lunch_cost float DEFAULT NULL,
  student_id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY );
  

-- Table structure for table absences

  DROP TABLE IF EXISTS absences;
  CREATE TABLE absences (
  student_id int unsigned NOT NULL,
  date date NOT NULL,
  PRIMARY KEY (student_id,date) );
  
-- Table structure for table classes 

DROP TABLE IF EXISTS classes;
CREATE TABLE classes (
  name varchar(30) NOT NULL,
  class_id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY
);

-- Table structure for table tests

DROP TABLE IF EXISTS tests;
CREATE TABLE tests (
  date date NOT NULL,
  type enum('T','Q') NOT NULL,
  maxscore int NOT NULL,
  class_id int unsigned NOT NULL,
  test_id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY
);

-- Table structure for table scores

DROP TABLE IF EXISTS scores;
CREATE TABLE scores (
  student_id int unsigned NOT NULL,
  test_id int unsigned NOT NULL,
  score int NOT NULL,
  PRIMARY KEY (test_id, student_id)
);