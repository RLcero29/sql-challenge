CREATE TABLE departments (
	dept_no VARCHAR(50) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE titles (
	title_id VARCHAR(50) NOT NULL PRIMARY KEY,
	title VARCHAR(100) 
);

CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title VARCHAR(50),
	birth_date DATE,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	sex VARCHAR(50),
	hire_date DATE,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(50),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(50),
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);