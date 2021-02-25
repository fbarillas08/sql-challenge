--- View 8: Frequency Count of Last Names by Letter
--- 

select 	
	E.last_name as "Last Name", count(*)
from "Employees" as E
group by E.last_name
order by count(*) desc
	 