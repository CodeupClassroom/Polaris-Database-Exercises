# exercise 1
select d.dept_name                            as `Department Name`
     , concat(e.first_name, ' ', e.last_name) as `Department Manager`
from departments d
         inner join dept_manager dm on d.dept_no = dm.dept_no
         inner join employees e on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01'

# exercise 2
select d.dept_name                            as `Department Name`
     , concat(e.first_name, ' ', e.last_name) as `Department Manager`
from departments d
         inner join dept_manager dm on d.dept_no = dm.dept_no
         inner join employees e on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01'
  and e.gender = 'F'

# exercise 3
select t.title, count(t.emp_no)
from departments as d
         inner join dept_emp as de on d.dept_no = de.dept_no
         inner join titles as t on de.emp_no = t.emp_no
where d.dept_name = 'Customer Service'
  and de.to_date = '9999-01-01'
  and t.to_date = '9999-01-01'
group by t.title

# exercise 4
select d.dept_name                            as `Department Name`
     , concat(e.first_name, ' ', e.last_name) as `Department Manager`
     , s.salary                               as `Salary`
from departments d
         inner join dept_manager dm on d.dept_no = dm.dept_no
         inner join employees e on dm.emp_no = e.emp_no
         inner join salaries s on e.emp_no = s.emp_no
where dm.to_date = '9999-01-01'
  and s.to_date = '9999-01-01'
:when
# bonus
select concat(e.first_name, ' ', e.last_name)   as Employee
     , d.dept_name                              as Department
     , concat(e2.first_name, ' ', e2.last_name) as Manager
from departments as d
         inner join dept_emp as de on d.dept_no = de.dept_no
         inner join employees as e on de.emp_no = e.emp_no
         inner join dept_manager as dm on d.dept_no = dm.dept_no
         inner join employees as e2 on dm.emp_no = e2.emp_no
where de.to_date = '9999-01-01'
  and dm.to_date = '9999-01-01'

