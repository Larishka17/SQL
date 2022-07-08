-- 1. Display all employees whose salaries are in the database, along with their salaries.
SELECT employee_name, monthly_salary 
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id;

-- 2. Display all employees whose salaries are less than 2000.
SELECT employee_name, monthly_salary 
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
WHERE monthly_salary < 2000;

-- 3. Display all salary positions, but no employee is assigned to them. (There is a salary, but it is not clear who receives it.)
SELECT employee_name, monthly_salary 
FROM employee_salary
LEFT JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
WHERE employee_name IS NULL;

-- 4. Display all salary positions less than 2000 but no employee has been assigned to them. (There is a salary, but it is not clear who receives it.)
SELECT monthly_salary, employee_name 
FROM employee_salary
LEFT JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
WHERE monthly_salary < 2000 AND employee_name IS NULL;

-- 5. Find all employees who have not received their salary.
SELECT employee_name, monthly_salary 
FROM employee_salary
RIGHT JOIN employees ON employee_salary.employee_id = employees.id
FULL JOIN salary ON employee_salary.salary_id = salary.id
WHERE monthly_salary is null;

-- 6. Display all employees with their job titles.
SELECT employee_name, role_name 
FROM roles_employee
JOIN employees ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id;

-- 7. Display names and titles of Java developers only.
SELECT employee_name, role_name 
FROM roles_employee
JOIN employees ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Java developer%';

-- 8. Display the names and titles of only Python developers.
SELECT employee_name, role_name 
FROM roles_employee
JOIN employees ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Python%';

-- 9. Display the names and position of all QA engineers.
SELECT employee_name, role_name 
FROM roles_employee
JOIN employees ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%QA%';

-- 10. Display the names and position of manual QA engineers.
SELECT employee_name, role_name 
FROM roles_employee
JOIN employees ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Manual QA%';

-- 11. Display the names and position of automation QA.
SELECT employee_name, role_name 
FROM roles_employee
JOIN employees ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Automation QA%';

-- 12. Display the names and salaries of junior specialists.
SELECT employee_name, monthly_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Junior%';

-- 13. Display the names and salaries of middle specialists.
SELECT employee_name, monthly_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Middle%';

-- 14. Display the names and salaries of senior specialists.
SELECT employee_name, monthly_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Senior%';

-- 15. Display salaries of Java developers.
SELECT monthly_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Java developer%';

-- 16. Display Python Developer Salaries.
SELECT monthly_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Python%';

-- 17. Display Names and Salaries of Junior Python Developers.
SELECT employee_name, monthly_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Junior Python%';

-- 18. Display names and salaries of Middle JS developers.
SELECT employee_name, monthly_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Middle JavaScript%';

-- 19. Display the names and salaries of Senior Java Developers.
SELECT employee_name, monthly_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Senior Java developer%';

-- 20. Display Salaries of Junior QA Engineers.
SELECT monthly_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Junior QA%';

-- 21. Display the average salary of all junior specialists.
SELECT AVG(monthly_salary) AS jun_average_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Junior%';

-- 22. Display the amount of salaries of JS developers.
SELECT SUM(monthly_salary) 
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%JavaScript%';

-- 23. Display the minimum salary of QA engineers.
SELECT MIN(monthly_salary)
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%QA%';

-- 24. Display the maximum salary of QA engineers.
SELECT MAX(monthly_salary)
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%QA%';

-- 25. Display the number of QA engineers.
SELECT COUNT(employee_name)
FROM roles_employee
JOIN employees ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%QA%';

-- 26. Display the number of Middle specialists.
SELECT COUNT(employee_name)
FROM roles_employee
JOIN employees ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%Middle%';

-- 27. Display the number of developers.
SELECT COUNT(employee_name)
FROM roles_employee
JOIN employees ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%developer%';

-- 28. Withdraw the fund (amount) of the developers' salaries.
SELECT SUM(monthly_salary) 
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE role_name LIKE '%developer%';

-- 29. Display the names, positions and salaries of all specialists in ascending order.
SELECT employee_name, role_name, monthly_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
ORDER BY monthly_salary ASC;

-- 30. Display the names, positions and salary of all specialists in ascending order from specialists whose salary is from 1700 to 2300.
SELECT employee_name, role_name, monthly_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE monthly_salary BETWEEN 1700 AND 2300
ORDER BY monthly_salary ASC;

-- 31. Display the names, positions and salary of all specialists in ascending order for specialists whose salary is less than 2300.
SELECT employee_name, role_name, monthly_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE monthly_salary < 2300
ORDER BY monthly_salary ASC;

-- 32. Display the names, positions and salary of all specialists in ascending order for specialists whose salary is equal to 1100, 1500, 2000.
SELECT employee_name, role_name, monthly_salary
FROM employee_salary
JOIN employees ON employee_salary.employee_id = employees.id
JOIN salary ON employee_salary.salary_id = salary.id
JOIN roles_employee ON roles_employee.employee_id = employees.id
JOIN roles ON roles_employee.role_id = roles.id
WHERE monthly_salary IN (1100, 1500, 2000)
ORDER BY monthly_salary ASC;