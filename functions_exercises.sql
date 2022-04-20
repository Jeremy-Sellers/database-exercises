USE employees;

# Find all employees whose last name starts AND ends with E and concat their names together
SELECT concat(first_name, ' ', last_name)
FROM employees
WHERE last_name like ('E%E');


# Find all employees born on christmas
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12 and DAY(birth_date) = 25;

# Find all employees hired in the 90s and born on christmas
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12 and DAY(birth_date) = 25 and YEAR(hire_date) < 2000 and YEAR(hire_date) > 1989;


# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
and DAY(birth_date) = 25
and YEAR(hire_date) < 2000
and YEAR(hire_date) > 1989
ORDER BY birth_date, hire_date desc;

# Of employees born on christmas and hired in the 90s find how many days they have worked at this company
SELECT DATEDIFF(now(),hire_date)
FROM employees
WHERE MONTH(birth_date) = 12 and DAY(birth_date) = 25 and YEAR(hire_date) < 2000 and YEAR(hire_date) > 1989;

