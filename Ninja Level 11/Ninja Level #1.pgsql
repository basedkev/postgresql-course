SELECT employees.ename, department.dept 
FROM employees JOIN department ON (employees.eid = department.eid)
WHERE department.dept = 'Sales';



