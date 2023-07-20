SELECT first_name, last_name FROM employees
ORDER BY first_name DESC;

SELECT salary FROM employees;

SELECT max (salary), min (salary) FROM employees;

SELECT first_name, last_name, salary FROM employees
WHERE round (salary/12.2);

SELECT first_name, last_name, salary FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;

SELECT first_name, last_name, salary, department_id 
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000
AND department_id IN(30, 100);

SELECT last_name FROM employees
WHERE last_name LIKE '__e%';

SELECT count (DISTINCT job_id) FROM employees;

SELECT department_id, SUM (salary) FROM employees
GROUP BY department_id;

SELECT Avg_Salary, job_id FROM employees
WHERE job_id <> "IT_PROG";

SELECT Avg_Salary, job_id, count (*)
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 10;

SELECT first_name, last_name, salary FROM employees
WHERE salary > (SELECT salary FROM employees WHERE  last_name = 'Bull');

SELECT first_name, last_name, department_id FROM employees
JOIN departments USING (department_id);

SELECT job_title, first_name, salary-min_salary 'Salary - Min_Salary'
FROM employees
NATURAL JOIN jobs;

