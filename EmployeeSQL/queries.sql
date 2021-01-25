select * from employees	

--selecting employees information and salary
select employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
	
	from employees
	inner join salaries on
	employees.emp_no = salaries.emp_no;

-- selecting employees hired in 1986 (still needs work)
select employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.hire_date
	from employees
	where extract(year from employees.hire_date) = 1986
	
	
--selecting managers and their departments
select employees.emp_no,
	employees.last_name,
	employees.first_name,
	dept_manager.dept_no
	from employees
	inner join dept_manager on
	employees.emp_no = dept_manager.emp_no
		inner join departments on
		dept_manager.dept_no = departments.dept_no;
		

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
	from employees
	inner join dept_emp on
	dept_emp.emp_no = employees.emp_no
		inner join departments on
		dept_emp.dept_no = departments.dept_no


--List first name, last name, and sex for 
--employees whose first name is "Hercules" and last names begin with "B."
select employees.first_name,
	employees.last_name,
	employees.sex
	from employees
	where employees.first_name = 'Hercules'
	and employees.last_name LIKE 'B%'
	
--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
select employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
	from employees
	inner join dept_emp on
	dept_emp.emp_no = employees.emp_no
		inner join departments on
		dept_emp.dept_no = departments.dept_no
	where departments.dept_name = 'Sales'
	
--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
select employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
	from employees
	inner join dept_emp on
	dept_emp.emp_no = employees.emp_no
		inner join departments on
		dept_emp.dept_no = departments.dept_no
	where departments.dept_name = 'Sales' or departments.dept_name = 'Development'
	
--In descending order, 
--list the frequency count of employee last names,
--i.e., how many employees share each last name.
select employees.last_name,
	count(employees.last_name)
	from employees
	group by employees.last_name
