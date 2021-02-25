--- View 5: first name, last name, and sex for employees 
--- whose first name is "Hercules" and last names begin with "B"

select 	
	E.emp_no as "Employee ID",
	E.first_name as "First Name",
	E.last_name as "Last Name",
	E.sex as "Gender"
		from "Employees" as E
		where 
			E.last_name like'B%' and
			E.first_name = 'Hercules'
		order by E.last_name;
		