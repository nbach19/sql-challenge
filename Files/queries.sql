--1. List the following details of each employee: 
--employee number, last name, first name, gender, and salary.
select e.emp_no,
	e.last_name,
	e.first_name,
	e.gender,
	s.salary
from employees e
join salaries s on s.emp_no = e.emp_no;

--2. List employees who were hired in 1986.
Select e.emp_no, 
e.first_name, 
e.last_name
From employees e 
where e.hire_date between '1986-1-1' and '1986-12-31';

--3.List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name, and start and end employment dates.
Select d.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name,
	de.from_date,
	de.to_date
From employees e
Join dept_manager dm on dm.emp_no = e.emp_no
Join departments d on d.dept_no = dm.dept_no
Join dept_emp de on de.emp_no = dm.emp_no;

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
From employees e
Join dept_emp de on de.emp_no = e.emp_no
Join departments d on d.dept_no = de.dept_no;

--5.List all employees whose first name is "Hercules" and last names begin with "B."
Select *
From employees e
Where e.first_name like 'Hercules'
and e.last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
Select e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
From employees e
Join dept_emp de on de.emp_no = e.emp_no
Join departments d on d.dept_no = de.dept_no
Where de.dept_no = 'd007';

--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
Select e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
From employees e
Join dept_emp de on de.emp_no = e.emp_no
Join departments d on d.dept_no = de.dept_no
Where de.dept_no in ('d007', 'd005');

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
select last_name, 
	count(*)
from employees e
GROUP BY last_name
order by count desc;


