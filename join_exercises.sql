use employees;

SELECT salaries.salary as salary, salaries.from_date AS startDate,
salaries.to_date  AS endDate
from employees
JOIN salaries ON employees.emp_no = salaries.emp_no
JOIN departments ON salaries.emp_no;

# write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM employees as e
JOIN dept_emp as de ON de.emp_no = e.emp_no
JOIN departments as d ON d.dept_no = de.dept_no
JOIN dept_manager as dm on e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND dm.emp_no;

SELECT d.dept_name as "Department Name", CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM departments d
join dept_manager dm on d.dept_no = dm.dept_no
join employees e on e.emp_no = dm.emp_no
WHERE to_date LIKE '9%'
ORDER BY d.dept_name;


# Find the name of all departments currently managed by women
SELECT dept_name as "Department name", CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM departments d

JOIN dept_manager dm  ON d.dept_no = dm.dept_no

JOIN employees e on e.emp_no = dm.emp_no

WHERE dm.to_date = '9999-01-01' AND gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
SELECT title, count(title) as Total
FROM titles t JOIN dept_emp de on t.emp_no = de.emp_no
WHERE dept_no = 'd009'
AND t.to_date LIKE '9%'
AND de.to_date LIKE '9%'
group by title;

# Find the current salary of all current managers.
SELECT d.dept_name as "Department Name", CONCAT(e.first_name, ' ', e.last_name) AS department_manager, salary
FROM departments d
join dept_manager dm on d.dept_no = dm.dept_no
join employees e on e.emp_no = dm.emp_no
join salaries s on e.emp_no = s.emp_no
WHERE dm.to_date LIKE '9%'
AND s.to_date like '9%'
ORDER BY d.dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name .
SELECT CONCAT(e.first_name, ' ',e.last_name) as Employee,
dept_name as Department,CONCAT(e2.first_name, ' ',e2.last_name) AS Manager
FROM employees e
JOIN dept_emp de on e.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e2 ON dm.emp_no = e2.emp_no
WHERE de.to_date LIKE '9%'
AND dm.to_date like '9%'
ORDER BY dept_name;