--current time
SELECT CURRENT_TIMESTAMP AS DATE;

--add date
SELECT hire_date, DATEADD(year, 1, hire_date) AS ADDDATE from employees;
SELECT hire_date, DATEADD(month, 5, hire_date) AS ADDDATE from employees;
SELECT hire_date, DATEADD(day,10, hire_date) AS ADDDATE from employees;

--date difference
select hire_date,DATEDIFF(year,hire_date,CURRENT_TIMESTAMP) AS dateDifference from employees
select hire_date,DATEDIFF(month,hire_date,'10/1/2022') AS dateDifference from employees
select hire_date,DATEDIFF(day,hire_date,'10/1/2022') AS dateDifference from employees

--get date
select hire_date,DATENAME(year,hire_date) AS dateDifference from employees
select hire_date,YEAR(hire_date) AS Days from employees
select hire_date,DAY(hire_date) AS Days from employees
select hire_date,MONTH(hire_date) AS Days from employees


--YYYY-MM-DD				VARCHAR(10)			20, 21, 120, 121, 126 and 127
--YYYY-MM-DD HH24:MI:SS		VARCHAR(19)			20, 21, 120 and 121
--YYYYMMDD					VARCHAR(8)			112
--YYYYMM					VARCHAR(6)			112
--YYMM						VARCHAR(4)			12
--YYYY						VARCHAR(4)			112
--YYYY/MM/DD				VARCHAR(10)			111
--DD/MM/YYYY				VARCHAR(10)			103
--HH24:MI					VARCHAR(5)			8, 108, 14 and 114
--HH24:MI:SS				VARCHAR(8)			8, 108, 14 and 114

--'YYYY/MM/DD'
SELECT CONVERT(VARCHAR(10),hire_date, 111)
from employees

--'DD/MM/YYYY'
SELECT CONVERT(VARCHAR(10),hire_date, 103)
from employees

-- 'YYYYMMDD'
SELECT CONVERT(VARCHAR(8),hire_date, 112)
from employees

-- 'YYYY-MM-DD'
SELECT CONVERT(VARCHAR(10),hire_date, 20)
from employees

--'YYYY-MM-DD HH24:MI:SS'
SELECT CONVERT(VARCHAR(19),GETDATE(), 20)

--'HH24:MI'
SELECT CONVERT(VARCHAR(5),GETDATE(), 8)

--'HH24:MI:SS'
SELECT CONVERT(VARCHAR(8),GETDATE(), 8)