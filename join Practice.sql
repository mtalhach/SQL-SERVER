--1) List all employees who joined in the month of June.
select 
first_name,hire_date
from employees
where (MONTH(hire_date)=6)

--2) Display first name and last name and experience of the employees in years
select 
first_name,last_name, DATEDIFF(year,hire_date,CURRENT_TIMESTAMP) AS experience
from employees

--3) Display Employee_id  of employees who joined in 2002.
select 
employee_id,hire_date
from employees
where YEAR(hire_date)='2002'

--4) Display first name and last name as full name where last name contain character ‘d’ 
--after 2nd position.
select 
CONCAT(first_name,' ',last_name) AS NAME
from employees
WHERE last_name LIKE '__%d%'

--5) Display number of employees who joined after 15th of the month.
select COUNT(employee_id) AS Employees
from employees
WHERE (DAY(hire_date)>15)

--6) Display years in which more than 5 employees joined.
select YEAR(hire_date) AS YEAR
from employees
GROUP BY YEAR(hire_date)
HAVING COUNT(employee_id)>5

--7) Display departments where a manager is having more than 3 employees. 
select 
d.department_name
from employees e JOIN departments d 
ON e.department_id=d.department_id
GROUP BY d.department_name,e.manager_id
HAVING COUNT(employee_id)>3

--8) Display average salary of each job title of employees
select
AVG(salary) AS AVERGAESALARY,
j.job_title
from 
employees e JOIN jobs j
ON j.job_id=e.job_id
GROUP BY j.job_title

--9) Display department name, manager name, and salary of all managers 
--having more than 5 years experience.

select 
d.department_name,e.first_name,e.salary
from 
employees e JOIN departments d
ON e.department_id=d.department_id
WHERE DATEDIFF(year,hire_date,SYSDATETIME())>5

--10) Display employee name and its country in which he is currently working.
select 
CONCAT(e.first_name,' ',e.last_name) AS NAME,c.country_name
from employees e
JOIN  departments d ON d.department_id=e.department_id
JOIN locations l ON l.location_id=d.location_id 
JOIN countries c ON c.country_id=l.country_id 

--11)Display those employees who contain a letter z to their 
--first name and also display their last name, department, city, and state province
select 
e.first_name,e.last_name,d.department_name,l.city,l.state_province
from employees e
JOIN departments d ON d.department_id=e.department_id
JOIN locations l ON l.location_id=d.location_id
where first_name LIKE '%a%'

--12)Display all departments including those where does not have any employee.
select 
d.department_name
from employees e
JOIN departments d ON d.department_id=e.department_id
GROUP BY d.department_name
HAVING COUNT(employee_id)=0

--13) Display job title, full name of employee, and the difference between maximum salary as 
--(salary difference) for job and salary the employee is getting.
select 
j.job_title,CONCAT(first_name,' ',last_name) AS NAME,j.max_salary-e.salary AS salaryDifferece
from employees e
JOIN jobs j ON j.job_id=e.job_id

--14)Display job title and average salary of employees.
select j.job_title, AVG(e.salary) AS averageSalary
from employees e
JOIN jobs j ON e.job_id=j.job_id
GROUP BY j.job_title

--15)Display the full name (first and last name), and salary of those 
--employees who working in any department located in London.
select CONCAT(e.first_name,' ',e.last_name) AS NAME, e.salary,l.city
from employees e
JOIN departments d ON d.department_id=e.department_id
JOIN locations l ON l.location_id=d.location_id
WHERE l.city='London'