SELECT department.dept, employees.ename
FROM employees RIGHT JOIN department USING (eid);