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
ALTER TABLE Dept_Emp
	ADD CONSTRAINT fK_Dept_Emp_emp_no
	FOREIGN KEY (emp_no) 
	REFERENCES (Employees.emp_no);
	
ALTER TABLE Dept_Emp 
	ADD CONSTRAINT fk_Dept_Emp_dept_no
	FOREIGN KEY(dept_no) 
	REFERENCES (Departments.dept_no);

ALTER TABLE Titles 
	ADD CONSTRAINT fk_Titles_title_id
	FOREIGN KEY(title_id)
	REFERENCES (Employees.emp_title_id);

ALTER TABLE Employees
	ADD CONSTRAINT fk_Employees_emp_no
	FOREIGN KEY(emp_no)
	REFERENCES (Dept_Manager.emp_no);

ALTER TABLE Salaries 
	ADD CONSTRAINT fk_Salaries_emp_no
	FOREIGN KEY(emp_no)
	REFERENCES (Employees.emp_no);

ALTER TABLE Dept_Manager
	ADD CONSTRAINT fk_Dept_Manager_dept_no
	FOREIGN KEY(dept_no)
	REFERENCES (Departments.dept_no);
