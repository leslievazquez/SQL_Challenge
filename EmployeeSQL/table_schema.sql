-- Create tables
create table titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	constraint pk_titles PRIMARY KEY (title_id)
);

create table dept_emp(
	emp_no INT NOT NULL, 
	dept_no VARCHAR NOT NULL
);

create table departments(
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	constraint pk_departments PRIMARY KEY(dept_no)
);

create table salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL, 
	constraint pk_salaries PRIMARY KEY(emp_no)
);

create table employees(
	emp_no INT NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL, 
	hire_date VARCHAR NOT NULL,
	constraint pk_employees PRIMARY KEY (emp_no)
);

create table dept_manager(
	dept_no VARCHAR NOT NULL, 
	emp_no INT NOT NULL
);

-- Add foreign keys 
ALTER TABLE dept_manager ADD constraint fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES salaries (emp_no);

ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_title FOREIGN KEY(emp_title)
REFERENCES titles (title_id);