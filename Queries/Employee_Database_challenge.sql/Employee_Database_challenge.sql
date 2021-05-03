-- Joining employees and title tables
SELECT employees.emp_no,
     employees.first_name,
	 employees.last_name,
	 titles.title,
     titles.from_date,
     titles.to_date
INTO retirement_titles
FROM employees
FULL JOIN titles
ON employees.emp_no = titles.emp_no;
SELECT * FROM retirement_titles;
DROP TABLE retirement_titles CASCADE;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;

SELECT employees.emp_no,
     employees.first_name,
	 employees.last_name,
	 titles.title
INTO unique_titles
FROM employees
FULL JOIN titles
ON employees.emp_no = titles.emp_no;
SELECT * FROM unique_titles;

SELECT COUNT(ce.emp_no), de.dept_no
INTO retiriing_titles 
FROM unique_titles
LEFT JOIN dept_emp 
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;
SELECT * FROM emp_count_dept_no;

SELECT * FROM titles
ORDER BY to_date DESC;


-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
INTO retiring_titles
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;