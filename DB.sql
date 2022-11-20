--select all
select * 
from departments

--specific selection
select department_id,location_id
from departments

--rename
select employee_id,salary,salary*300 AS YEARLYSALARY
from employees

--concat
select CONCAT(first_name,' ',last_name) "NAME"
from employees

--distinct
select DISTINCT employee_id
from employees

--where
select employee_id,first_name,last_name
from employees
where employee_id=101

select first_name,last_name,salary
from employees
where salary>=15000

select employee_id,first_name,last_name
from employees
where employee_id IN(101,102,103)

select employee_id,first_name,last_name
from employees
where first_name LIKE 'L%'

select employee_id,first_name,last_name
from employees
where first_name LIKE '_e%'

select employee_id,first_name,salary,job_id
from employees
where salary>=15000
AND job_id=5

select employee_id,first_name,salary,job_id
from employees
where salary>=15000
OR job_id=5

select employee_id,first_name,salary,job_id
from employees
where job_id NOT IN(4,5,9)

select employee_id,first_name,salary,job_id
from employees
where job_id=4
OR job_id=9
AND salary>=15000

select employee_id,first_name,salary,job_id
from employees
where (job_id=4
OR job_id=9)
AND salary>=15000

--ordering
select employee_id,first_name,salary,hire_date
from employees
ORDER BY hire_date

select employee_id,first_name,salary,hire_date
from employees
ORDER BY hire_date DESC

--lower/upper
select lower('TALHA')
select UPPER('talha')

--subString
select first_name,substring(first_name,1,3) AS NAME
from employees

--length
select first_name,LEN(first_name) AS NAME
from employees

--select
select RIGHT('12345'+'***',7)
select LEFT('12345'+'***',6)

--charindex
select last_name ,CHARINDEX('t',last_name) AS CHARINDEX from employees;

--replace
select last_name ,REPLACE(last_name,'a','e') AS NAME from employees;

--trim
select last_name, TRIM('k' from last_name) AS NAME from employees;

--round trunc
SELECT ROUND(45.923,2) AS VALUE, ROUND(45.923,0) AS VALUE,
ROUND(45.923,-1) AS VALUE

--math functions
select MAX(salary) AS MAXSALARY from employees
select MIN(salary) AS MINSALARY from employees
select salary, SQRT(salary) AS SQUAREROOT from employees
select salary, SQUARE(salary) AS SQUAREROOT from employees
select SUM(salary) from employees
select AVG(salary) from employees

select last_name, hire_date from employees
where hire_date>'01-FEB-88';

--replace
select replicate('*',4);
select replicate('*',4)+ LEFT(first_name,9) from employees;
select RIGHT(replicate('*',4)+ LEFT(first_name,9),13) from employees;

--convert to int
select convert (int, 12.56) As char

--convert to char value
select CAST (12.56 as int) AS conversion;
SELECT CAST(25.65 AS varchar) AS conversion;
select CAST (123 as char(4)) AS conversion;
SELECT CAST('2017-08-25' AS datetime) AS conversion;

--count the number of rows
select COUNT(*)
from employees

select COUNT(DISTINCT department_id)
from employees