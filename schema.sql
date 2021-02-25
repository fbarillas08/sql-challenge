--- Schema for Employee SQL Challenge
--- Creating 6 Tables

CREATE TABLE Departments(
    dept_no		varchar(10)		NOT NULL PRIMARY KEY, 
    dept_name 	varchar(30) 	NOT NULL);
    
CREATE TABLE Dept_Emp(
    map_id		serial			PRIMARY KEY,
	emp_no	 	int  			NOT NULL,
    dept_no 	varchar(10) 	NOT NULL);
    
CREATE TABLE Titles(
    title_id 	varchar(10)		NOT NULL PRIMARY KEY,
    title 		varchar(30) 	NOT NULL);

CREATE TABLE Employees(
    emp_no 			int   		NOT NULL PRIMARY KEY,
    emp_title_id	varchar(10) NOT NULL,
    birth_date 		date   		NOT NULL,
    first_name 		varchar(30) NOT NULL,
    last_name 		varchar(30) NOT NULL,
    sex 			varchar(4)  NOT NULL,
    hire_date 		date   		NOT NULL);
    
CREATE TABLE Salaries(
    emp_no 		int   			NOT NULL PRIMARY KEY
    salary 		int   			NOT NULL);

CREATE TABLE Dept_Manager(
    dmap_id		serial		PRIMARY KEY,
	emp_no 		int   		NOT NULL,
    dept_no 	varchar(10) NOT NULL);
    
--- Defining Foreign Keys

