USE employees;


# Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.
#
# Add the date of birth for each employee as 'DOB' to the query.
#
# Update the query to format full name to include the employee number so it is formatted as 'employee number - last name, first name'.

SELECT concat(emp_no, ' - ', last_name, ', ', first_name) as full_name, birth_date as DOB
from employees
LIMIT 10;