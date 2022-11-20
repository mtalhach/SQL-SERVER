select last_name
from employees
where salary>(
select salary
from employees
where last_name='chen')

select last_name,job_id,salary
from employees
where job_id=(
select job_id
from employees
where employee_id='109')

select last_name,job_id,salary
from employees
where salary>(
select salary
from employees
where employee_id='119')

select last_name,job_id,salary
from employees
where salary=(
select MIN(salary)
from employees)

select department_id,MIN(salary)
from employees
group by department_id
HAVING MIN(salary)>(
select MIN(salary)
from employees
where employee_id='103')

select employee_id,last_name,job_id,salary
from employees
where salary<ANY(
select salary
from employees
where job_id='1'
AND job_id <> '9'
)
AND job_id <> '9'

select employee_id,last_name,job_id,salary
from employees
where salary<ALL(
select salary
from employees
where job_id='1'
AND job_id <> '8'
)
AND job_id <> '8'

select distinct d.department_id
from departments d
join employees e on e.department_id=d.department_id
where d.department_id in
(select e.department_id 
from employees
group by department_id
having e.salary > 10000)

SELECT *
FROM departments
WHERE department_id =any
(SELECT distinct department_id FROM employees  where salary>10000)


