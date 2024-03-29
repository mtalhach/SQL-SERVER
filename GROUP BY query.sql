--group by
SELECT department_id,(AVG(salary))
FROM employees
GROUP BY department_id;

SELECT department_id, job_id, SUM(salary) AS sumSalary
FROM employees
GROUP BY department_id, job_id ;

SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
HAVING MAX(salary)>10000 ;

SELECT job_id, SUM(salary) PAYROLL
FROM employees
WHERE job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING SUM(salary) > 13000
ORDER BY SUM(salary);