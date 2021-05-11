-- Create Tables
CREATE TABLE departments (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR,
	dept_name VARCHAR
);

CREATE TABLE dept_emp (
	id SERIAL PRIMARY KEY,
	emp_no INT,
	dept_no VARCHAR
);

CREATE TABLE dept_manager (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR,
	emp_no INT
);

CREATE TABLE employees (
	id SERIAL PRIMARY KEY,
	emp_no INT,
	emp_title VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR(1),
	hire_date VARCHAR
);

CREATE TABLE salaries (
	id SERIAL PRIMARY KEY,
	emp_no INT,
	salary INT
);

CREATE TABLE titles (
	id SERIAL PRIMARY KEY,
	title_id VARCHAR,
	title VARCHAR
);