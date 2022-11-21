
--union
select first_name,last_name
from employees
union
select first_name,last_name
from dependents

--union All
select first_name,last_name
from employees
UNION ALL
select first_name,last_name
from dependents

--intersect
select employee_id
from employees
intersect
select employee_id
from dependents

--except
select employee_id
from employees
except
select employee_id
from dependents



--For practice
select coalesce(NULL,NULL,NULL,'CUI Lahore',NULL,'Example');
SELECT COALESCE(NULL,1, 2, 'CUI Lahore');

select IIF(50<70,'Yes','NO')
SELECT IIF(500<1000, 5, 10);
SELECT IIF('hello' = 'world', 'YES', 'NO');

SELECT last_name,
UPPER(CONCAT(SUBSTRING (LAST_NAME, 1, 8), '_US'))
FROM employees
WHERE department_id = 10;

select first_name, salary,manager_id, ISNULL(manager_id,
'100002') AS Allmanagers
from employees

