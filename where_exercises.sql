USE employees;

#Find all employees with first names Irena, Vidya, Maya
SELECT *
FROM employees
WHERE first_name IN ('Irena','Vidya','Maya');

# Find all employees whose last name starts with E
SELECT *
FROM employees
WHERE last_name LIKE ('E%');

# Find all employees with a q in their last name
SELECT *
FROM employees
WHERE last_name like ('%q%');

# Update first query to use OR instead of IN and whose gender is male
SELECT *
FROM employees
WHERE gender = 'M' AND
      (first_name = 'Irena' OR
      first_name = 'Vidya' OR
      first_name = 'Maya');

# Find all employees whose last name starts OR ends with E
SELECT *
FROM employees
WHERE last_name like ('%E') or last_name like ('E%');

# Find all employees whose last name starts AND ends with E
SELECT *
FROM employees
WHERE last_name like ('E%E');

# Find all employees with a q in their lsat name but not qu
SELECT *
FROM employees
WHERE last_name like ('%q%') And last_name not like ('%qu%');

