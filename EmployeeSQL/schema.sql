drop table if exists employees cascade;
drop table if exists dept_emp;
drop table if exists salaries;
drop table if exists dept_manager;
drop table if exists departments;
drop table if exists titles;

drop table if exists titles

CREATE TABLE titles (
    title_id varchar   NOT NULL primary key,
    title varchar   NOT NULL
);

CREATE TABLE employees (
    emp_no integer   NOT NULL primary key,
    emp_title_id varchar   NOT NULL,
	foreign key (emp_title_id) references titles(title_id),
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex varchar   NOT NULL,
    hire_date date   NOT NULL
);

drop table if exists departments

CREATE TABLE departments (
    dept_no varchar   NOT NULL primary key,
    dept_name varchar   NOT NULL
);

drop table if exists dept_emp

CREATE TABLE dept_emp (
    emp_no integer   NOT NULL,
	foreign key (emp_no) references employees (emp_no),
    dept_no varchar   NOT NULL,
	foreign key (dept_no) references departments(dept_no)
);

drop table if exists salaries

CREATE TABLE salaries (
    emp_no integer   NOT NULL,
	foreign key (emp_no) references employees(emp_no),
    salary integer   NOT NULL
);

drop table if exists dept_manager

CREATE TABLE dept_manager (
    dept_no varchar   NOT NULL,
    emp_no integer   NOT NULL,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);
