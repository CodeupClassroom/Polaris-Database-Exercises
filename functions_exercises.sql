use employees;

# select * from employees.employees e where e.first_name like 'e%e';

select CONCAT(e.first_name, ' ', e.last_name) fullName
from employees.employees e
where e.first_name like 'e%e'
  and e.last_name like 'e%e';

select COUNT(*)
from employees.employees e
where DAY(e.birth_date) = 25
  and MONTHNAME(e.birth_date) = 'december';

select COUNT(*)
from employees.employees e
where DAY(e.birth_date) = 25
  and MONTH(e.birth_date) = 12;


# check to see if employee was hired in the 90's
select *
from employees.employees e
where YEAR(e.hire_date) BETWEEN 1990 and 1999;


select count(*)
from employees.employees e
where DAY(e.birth_date) = 25
  and MONTH(e.birth_date) = 12
  and (
    YEAR(e.hire_date) BETWEEN 1990 and 1999
    );


select *
from employees.employees e
where DAY(e.birth_date) = 25
  and MONTH(e.birth_date) = 12
  and (
    YEAR(e.hire_date) BETWEEN 1990 and 1999
    )
order by e.hire_date desc
limit 1;

select *,DATEDIFF(CURRENT_DATE(),e.hire_date) daysAtTheCompany
from employees.employees e
where DAY(e.birth_date) = 25
  and MONTH(e.birth_date) = 12
  and (
    YEAR(e.hire_date) BETWEEN 1990 and 1999
    )
