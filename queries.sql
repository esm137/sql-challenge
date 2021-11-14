
--question 1
select  employees.emp_no,
last_name,
first_name,
sex,
salary
from employees
inner join salaries
on employees.emp_no=salaries.emp_no;


select * from dept_manager;
--question 2
select first_name,
last_name,
hire_date
from employees
where hire_date like '%1986';


--question 3
select departments.dept_no,
dept_name,
employees.emp_no,
last_name,
first_name
from
dept_manager
inner join employees
on employees.emp_no=dept_manager.emp_no
inner join departments
on departments.dept_no=dept_manager.dept_no
;

--question 4
select employees.emp_no,
last_name,
first_name,
dept_name
from
employees
inner join dept_emp
on employees.emp_no=dept_emp.emp_no
inner join departments
on dept_emp.dept_no=departments.dept_no;

--question 5
select first_name,
last_name,
sex
from employees
where first_name='Hercules' and 
last_name like 'B%'

--question 6
select employees.emp_no,
last_name,
first_name,
dept_name
from
employees
inner join dept_emp
on employees.emp_no=dept_emp.emp_no
inner join departments
on dept_emp.dept_no=departments.dept_no
where dept_name='Sales';

--question 7
select employees.emp_no,
last_name,
first_name,
dept_name
from
employees
inner join dept_emp
on employees.emp_no=dept_emp.emp_no
inner join departments
on dept_emp.dept_no=departments.dept_no
where dept_name='Sales' or dept_name='Development';

--question 8
select last_name,
count(last_name) as "count"
from employees
group by last_name
order by count desc;



