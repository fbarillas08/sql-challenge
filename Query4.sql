--- View 4: Employees By Department
--- Employee Number, Last Name, First Name, Department Name

select 	
	E.emp_no as "Employee ID",
	E.last_name as "Last Name",
	E.first_name as "First Name",
	DE.dept_name as "Department Name"
from "Employees" as E
	inner join "Dept_Emp" as DEMP on E.emp_no = DEMP.emp_no
	inner join "Departments" as DE on DE.dept_no = DEMP.dept_no
order by E.last_name
	