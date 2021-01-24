select employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
	
	from employees
	inner join salaries on
	employees.emp_no = salaries.emp_no;
	
select employees.emp_no,
	employees.last_name,
	employees.first_name,
	dept_manager.dept_no
	from employees
	inner join dept_manager on
	employees.emp_no = dept_manager.emp_no
		inner join departments on
		dept_manager.dept_no = departments.dept_no;
		

