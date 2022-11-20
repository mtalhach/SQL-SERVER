--Q1)  find the first name, last name, department, city, and state province for each
--employee.
select
e.first_name,e.last_name,d.department_name,l.state_province,l.city
from employees e
join departments d ON e.department_id=d.department_id
join locations l ON l.location_id=d.location_id

--Q2) find all those employees who work in department ID 3 or 9. Return first
--name, last name, department number and department name.
SELECT 
e.first_name,e.last_name, d.department_name, d.department_id
From employees e 
join  departments d on e.department_id = d.department_id
 where d.department_id in (3,9);

--Q3) write a SQL query to find out which employees have or do not have a
--department. Return first name, last name, department ID, department name.
SELECT 
e.first_name,e.last_name, d.department_name, d.department_id
From employees e
left join  departments d on e.department_id = d.department_id

--Q4) write a SQL query to find out the full name (first and last name) of the
--employee with an ID and the name of the country where he/she is currently employed. 
SELECT
e.employee_id, concat(e.first_name, ' ' ,e.last_name) as Employee_Name, c.country_name
from employees e
join departments d on d.department_id = e.department_id
join locations l on l.location_id = d.location_id
join countries c on c.country_id = l.country_id;

--Q5) write a SQL query to find the name of the country, city, and departments,
--which are running there.
select 
e.first_name,e.last_name,d.department_id,l.city,l.state_province
from employees e
join departments d ON e.department_id=d.department_id
join locations l ON l.location_id=d.location_id 

--Q6) write a SQL query to find full name (first and last name), and salary of all 
--employees working in any department in the city of London and having salary above 6000.
select 
CONCAT(e.first_name,' ',e.last_name) AS NAME,d.department_id,e.salary,l.city
from employees e
join departments d ON e.department_id=d.department_id
join locations l ON l.location_id=d.location_id
WHERE e.salary>6000
AND l.city='London'