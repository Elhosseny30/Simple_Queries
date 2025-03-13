
select d.name as "Department", e.name as "Employee" , salary as "Salary" from
Department d join Employee e on
d.id = e.departmentId
where e.salary = (select max(salary) 
from  Employee where departmentId = e.departmentId);