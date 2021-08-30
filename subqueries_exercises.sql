use employees;


# 1
select *
from employees.employees emp
where emp.hire_date in (
    select subEmp.hire_date from employees.employees subEmp
    where subEmp.emp_no = 101010
    );


# 2
select t.title from titles t
where t.emp_no in (
    select emp.emp_no from employees.employees emp
    where emp.first_name = 'Aamod'
    );

#3
select emp.first_name, emp.last_name from employees.employees emp
where emp.gender = 'F' and (
    emp.emp_no in (
        select dm.emp_no from dept_manager dm
        where current_date between dm.from_date and dm.to_date
        )
    );

select dep.dept_name
from departments dep
where dep.dept_no in (
    select dm.dept_no
    from dept_manager dm
    where current_date between dm.from_date and dm.to_date
      and (dm.emp_no in (
        select emp.emp_no
        from employees.employees emp
        where emp.gender = 'F'
    ))
);

#Sub Query Version
select emp.first_name, emp.last_name
from employees emp
where emp.emp_no in (
    select s.emp_no
    from salaries s
    where s.salary in (
        select MAX(sal.salary)
        from salaries sal)
);


# Fast Sub Query
select emp.first_name, emp.last_name
from employees emp
where emp.emp_no = (
    select s.emp_no
    from salaries s
    order by s.salary desc limit 1
);


#Join Version
select emp.first_name, emp.last_name
from employees.employees emp join salaries sal on emp.emp_no = sal.emp_no
order by sal.salary desc limit 1;
