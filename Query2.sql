--- View 2: First Name, Last Name, Hired Date for Employees Hired in 1986
Create View View2 as
select 
	E.first_name as "First Name",
	E.last_name as "Last Name",
	E.hire_date as "Date of Hire"
	from "Employees" as E
		where E.hire_date >= '01/01/1996' and E.hire_date <= '12/31/1996'
		order by E.hire_date

