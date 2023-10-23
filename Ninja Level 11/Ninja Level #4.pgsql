SELECT department.dept, employees.ename FROM
department LEFT JOIN employees USING (eid);