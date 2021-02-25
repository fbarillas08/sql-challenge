select * 
	from "Employees" as E
		inner join "Dept_Emp" as DE on DE.emp_no = E.emp_no	


select 
		E.emp_no, 
		E.first_name as "Employee First Name", 
		E.last_name, 
		DE.dept_no,
		DPT.dept_name
	from "Employees" as E
		inner join "Dept_Emp" as DE on DE.emp_no = E.emp_no
		inner join "Departments" as DPT on DPT.dept_no = DE.dept_no

