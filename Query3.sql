--- View 3: Department Managers
--- Department Number, Department Name, Manager's Number, Last Name, First Name


select 
	DE.dept_no as "Department Number",
	DE.dept_name as "Department Name",
	DEMA.emp_no as "Manager ID",
	E.last_name as "Last Name",
	E.first_name as "First Name"
from "Departments" as DE
	inner join "dept_manager" as DEMA on DE.dept_no = DEMA.dept_no
	inner join "Employees" as E on E.emp_no = DEMA.emp_no
order by DE.dept_no		