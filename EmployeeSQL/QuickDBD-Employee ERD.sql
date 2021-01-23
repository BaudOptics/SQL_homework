﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/3CIbhJ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- physical

CREATE TABLE "employees" (
    "emp_no" integer   NOT NULL,
    "emp_title_id" string   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" string   NOT NULL,
    "last_name" string   NOT NULL,
    "sex" string   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" integer   NOT NULL,
    "dept_no" string   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" integer   NOT NULL,
    "salary" integer   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" string   NOT NULL,
    "emp_no" integer   NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" string   NOT NULL,
    "dept_name" string   NOT NULL
);

CREATE TABLE "titles" (
    "title_id" string   NOT NULL,
    "title" string   NOT NULL
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "departments" ADD CONSTRAINT "fk_departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "dept_manager" ("dept_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_title_id" FOREIGN KEY("title_id")
REFERENCES "employees" ("emp_title_id");

