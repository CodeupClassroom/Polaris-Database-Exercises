USE employees;

SELECT distinct title FROM titles;

# List the first 10 distinct last name sorted in descending order.
select distinct e.last_name from employees.employees e order by e.last_name desc limit 10;

# Create a query to get the top 5 salaries
# and display just the employees number from the salaries table.

select distinct salary, emp_no
from salaries order by salary desc limit 5 offset 45;




