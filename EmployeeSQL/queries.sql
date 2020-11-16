-- 1. List the following details of each employee: 
-- employee number, last name, first name, sex and salary
-- Use Employees table and Salary tables
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no)

-- 2. List first name, last name and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date between '01-01-1986' and '12-31-1986'

-- 3. List manager of each department with the following information: 
-- department number, department name, manager's employee number, last name, first name
-- Use Dept_manager table, Department table, Employees table
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
LEFT JOIN departments
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
-- Use Dept_emp, Department, and Employee
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments
ON departments.dept_no = dept_emp.dept_no

-- 5. List first name, last name, and sex for employees whose first name is
-- Hercules and last name begins with B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- 6. List all employees in the Sales department, including their
-- employee number, last name, first name, and department name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their
-- employee number, last name, first name, and department name
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' 
OR departments.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names
SELECT last_name, COUNT(last_name) AS "name count"
FROM employees
GROUP BY last_name
ORDER BY "name count" DESC;
