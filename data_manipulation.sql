--1
select * from countries

INSERT INTO countries(country_id,country_name,region_id)
VALUES ('AB','India',2);
--2
select * from employees

set identity_insert employees OFF
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id)
VALUES (99,'Talha','Shafiq','talhashafiqch@gmail.com','03071601809',CURRENT_TIMESTAMP,7,25000,102,9)
--3
select * from regions

set identity_insert regions ON
INSERT INTO regions(region_id,region_name)
select location_id,street_address from locations
WHERE location_id=1400
--4
select * from countries

UPDATE countries
SET country_id='BC'
WHERE country_id='AB'
--5
select * from employees

UPDATE employees
SET job_id=(
select job_id from employees WHERE employee_id=100
),
salary=(
select salary from employees WHERE employee_id=100
)
WHERE employee_id=99
--6
select * from employees

DELETE from employees
WHERE employee_id=105
--7
select * from employees

DELETE from employees
WHERE department_id =(
select department_id from departments WHERE department_name LIKE '%IT%'
)