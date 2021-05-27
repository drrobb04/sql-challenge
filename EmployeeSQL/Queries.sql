-- Queries
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT a.emp_no, a.last_name, a.first_name, a.sex, b.salary 
FROM employee as a
INNER JOIN salaries as b ON (a.emp_no = b.emp_no);

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employee
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT a.dept_no, b.dept_name, c.emp_no, c.last_name, c.first_name
FROM dept_manager as a
INNER JOIN departments as b ON (a.dept_no = b.dept_no)
INNER JOIN employee as c ON (a.emp_no = c.emp_no);

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT a.dept_name, c.emp_no, c.last_name, c.first_name
FROM departments as a
INNER JOIN dept_emp as b ON (a.dept_no = b.dept_no)
INNER JOIN employee as c ON (b.emp_no = c.emp_no);

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules' AND last_name = 'b%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT a.dept_name, c.emp_no, c.last_name, c.first_name
FROM departments as a
INNER JOIN dept_emp as b ON (a.dept_no = b.dept_no)
INNER JOIN employee as c ON (b.emp_no = c.emp_no)
WHERE a.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT a.dept_name, c.emp_no, c.last_name, c.first_name
FROM departments as a
INNER JOIN dept_emp as b ON (a.dept_no = b.dept_no)
INNER JOIN employee as c ON (b.emp_no = c.emp_no)
WHERE a.dept_name = 'Sales' OR a.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employee
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;