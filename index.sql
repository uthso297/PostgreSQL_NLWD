-- Active: 1747479232124@@127.0.0.1@5432@practice
SELECT * FROM employees;

EXPLAIN ANALYSE
SELECT * FROM employees WHERE employee_name = 'David Lee';

CREATE INDEX idx_employees_employee_name
ON employees(employee_name)

SHOW data_directory;