--- View 7: Employees in the Sales Department and the Development Department
--- Employee Number, Last Name, First Name, Department Name

select 	
	E.emp_no as "Employee ID",
	E.last_name as "Last Name",
	E.first_name as "First Name",
	DE.dept_name as "Department Name"
from "Employees" as E
	inner join "Dept_Emp" as DEMP on E.emp_no = DEMP.emp_no
	inner join "Departments" as DE on DE.dept_no = DEMP.dept_no
where 
	DE.dept_name = 'Sales' or
	DE.dept_name = 'Development'
order by E.emp_no
	
	 