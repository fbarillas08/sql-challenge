--- View 1: Employee Number, Last Name, First Name, Sex, and Salary
Create View View1 as
select 
	E.emp_no as "Employee Number",
	E.last_name as "Employee Last Name",
	E.first_name as "Employee First Name",
	E.sex as "Gender",
	S.salary as "Salary"
	from "Employees" as E
		inner join "Salaries" as S on S.emp_no = E.emp_no
		order by E.last_name





