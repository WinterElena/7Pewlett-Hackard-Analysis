--Deliverable 1
SELECT emp_no, first_name, last_name
INTO retirement_titles
FROM employees;

SELECT title, from_date, to_date
--INTO retirement_titles
FROM titles;

SELECT retirement_titles.emp_no,
retirement_titles.first_name,
retirement_titles.last_name,
	titles.title,
titles.from_date,
titles.to_date
FROM titles
LEFT JOIN retirement_titles
ON retirement_titles.emp_no = titles.emp_no
ORDER BY emp_no;

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) first_name,
last_name,
title,
from_date,
to_date,

INTO unique_titles
FROM retirement_tables
ORDER BY emp_no, _____ DESC;






--GROUP BY (birth_date BETWEEN '1952-01-01' AND '1955-12-31'); <-- THIS LINE OF CODE WON'T WORK RIGHT NOW, BIRTH DATE WASN'T A 
-- PARAMETER WE PULLED IN FROM EMPLOYEE DATABASE