-- Schema Creation
-- Create tables without foreign keys
-- Create Departments Table
CREATE TABLE departments (
	dept_no VARCHAR not null,
	dept_name VARCHAR not null,
	PRIMARY KEY (dept_no)
);

-- Create Title Table
CREATE TABLE titles (
	title_id VARCHAR not null,
	title VARCHAR not null,
	PRIMARY KEY (title_id)
);

-- Create tables with foreign keys
-- Create Empolyee Table
CREATE TABLE employee (
	emp_no INT not null,
	emp_title_id VARCHAR not null,
	birth_date DATE not null,
	first_name VARCHAR not null,
	last_name VARCHAR not null,
	sex VARCHAR(1) not null,
	hire_date DATE not null, 
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create Dept_Emp Table
CREATE TABLE dept_emp (
	emp_no INT not null,
	dept_no VARCHAR not null,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

-- Create Salaries Table
CREATE TABLE salaries (
	emp_no INT not null,
	salary INT not null,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

-- Create Dept_Manager Table
CREATE TABLE dept_manager (
	dept_no VARCHAR not null,
	emp_no INT not null,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);