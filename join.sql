--------------------join

--join
SELECT 
e.first_name,e.last_name,e.department_id,d.department_id,d.department_name
FROM employees e 
JOIN departments d ON d.department_id = e.department_id
WHERE e.department_id IN (1 , 2, 3);

 --3 Table Join
 SELECT
e.first_name,e.last_name,j.job_title,d.department_name
FROM employees e
JOIN  departments d ON d.department_id = e.department_id
JOIN jobs j ON j.job_id = e.job_id
WHERE e.department_id IN (1, 2, 3);

--left join
SELECT
c.country_name,c.country_id,l.country_id,l.street_address,l.city
FROM countries c
LEFT JOIN locations l ON l.country_id = c.country_id
WHERE c.country_id IN ('US', 'UK', 'CN')

-- left Join 3 tables
SELECT
r.region_name,c.country_name,l.street_address,l.city
FROM regions r
LEFT JOIN countries c ON c.region_id = r.region_id
LEFT JOIN locations l ON l.country_id = c.country_id
WHERE c.country_id IN ('US', 'UK', 'CN');

--Right join
SELECT
c.country_name,c.country_id,l.country_id,l.street_address,l.city
FROM locations l
RIGHT join  countries c ON l.country_id = c.country_id
WHERE c.country_id IN ('US', 'UK', 'CN')

-- Full Outer join
SELECT
c.country_name,c.country_id,l.country_id,l.street_address,l.city
FROM countries c
Full outer JOIN locations l ON l.country_id = c.country_id
WHERE c.country_id IN ('US', 'UK', 'CN')

-- Full outer join another Example
SELECT 
concat(e.first_name ,' ', e.last_name) AS employee,
concat(m.first_name ,' ', m.last_name) AS manager
FROM employees e
full outer JOIN employees m ON m.employee_id = e.manager_id
ORDER BY manager;