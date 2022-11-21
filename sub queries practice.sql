--Q1) Display the details of employees drawing the highest salary in the department.
select first_name,
employee_id,
department_id,
salary
from employees
where salary IN
(select max(salary)
from employees
group by department_id
);

--Q2) Display the city of employee whose employee ID is 105.
select l.city
from locations l
join departments d ON d.location_id=l.location_id
join employees e ON e.department_id=d.department_id
where employee_id= 
(select employee_id
from employees
where employee_id ='105')

--Q3) Display details of departments managed by ‘Smith’.
select 
department_id,
department_name
from departments
where department_id IN
(select employee_id
from employees
where first_name='Smith');

--Q4) Display details of departments in which the maximum salary is more than 10000.
select
d.department_name,d.department_id,salary
from departments d
join employees emp on emp.department_id=d.department_id
where d.department_id IN
(select e.department_id
from employees e
group by department_id
having	 emp.salary>10000);

--Q5) Display jobs into which employees joined in the current year.
select j.job_id,e.hire_date
from employees e 
JOIN jobs j ON e.job_id=j.job_id
where hire_date=(
select hire_date
from employees
where YEAR(hire_date)=YEAR(CURRENT_TIMESTAMP)
)
--Q6) Display the departments into which no employee joined in last two years.
select d.department_name,hire_date
from departments d
JOIN employees e ON d.department_id=e.department_id
where e.hire_date NOT IN(
select hire_date
from employees 
where YEAR(hire_date)=DATEDIFF(YEAR,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP-2)
)

