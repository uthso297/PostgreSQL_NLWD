-- Active: 1747479232124@@127.0.0.1@5432@practice@public
CREATE Procedure remove_emp()
LANGUAGE plpgsql
AS
$$
    BEGIN
        DELETE FROM employees WHERE employee_id = 28;
    END
$$;

CALL remove_emp();
SELECT * FROM employees;
CREATE Procedure remove_emp_var()
LANGUAGE plpgsql
AS
$$
    DECLARE
    test_var int;
    BEGIN
        SELECT employee_id INTO test_var from employees WHERE employee_id = 26;
        DELETE FROM employees WHERE employee_id = test_var;
    END
$$;

call remove_emp_var();

CREATE Procedure remove_emp_by_id(p_emp_id int)
LANGUAGE plpgsql
AS
$$
    DECLARE
    test_var int;
    BEGIN
        SELECT employee_id INTO test_var from employees WHERE employee_id = p_emp_id;
        DELETE FROM employees WHERE employee_id = test_var;

        RAISE NOTICE 'Employee removed successfully!';
    END
$$;


CALL remove_emp_by_id(25)

