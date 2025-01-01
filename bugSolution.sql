```sql
-- Solution using a subquery
SELECT * FROM employees WHERE department = 'Sales' AND salary > (SELECT AVG(salary) FROM employees);

-- Solution using a CTE (Common Table Expression)
WITH AvgSalary AS (
    SELECT AVG(salary) AS avg_salary FROM employees
)
SELECT e.* FROM employees e, AvgSalary a WHERE e.department = 'Sales' AND e.salary > a.avg_salary;
```