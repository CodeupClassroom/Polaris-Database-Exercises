use employees;

select CONCAT(e.emp_no,' - ',e.last_name,', ',e.first_name) full_name, e.birth_date DOB from employees.employees e limit 10;
