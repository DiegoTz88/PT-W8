SELECT titles.title as "Title", count(employees.birth_date) as "Number of Employees born after 1965-01-01" from titles
INNER JOIN employees on employees.emp_no = titles.emp_no
GROUP BY titles.title
HAVING count(employees.birth_date) > "1965-01-01";

SELECT titles.title as "Title", avg(salaries.salary) as "Average Salary" from titles
INNER JOIN salaries on salaries.emp_no = titles.emp_no
group by titles.title

SELECT departments.dept_name as "Department Name", SUM(salaries.salary) as "Salary spent from 1990 - 1992" from departments
INNER JOIN dept_emp on dept_emp.dept_no = departments.dept_no
INNER JOIN salaries on salaries.emp_no = dept_emp.emp_no
WHERE departments.dept_name = "Marketing" AND salaries.from_date > "1989-12-31" AND salaries.to_date < "1993-01-01"
GROUP BY departments.dept_name





