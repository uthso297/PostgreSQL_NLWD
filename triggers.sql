-- Active: 1747479232124@@127.0.0.1@5432@ph@public
/*
A trigger is a database object in PostgreSQL (and other database management systems) that automatically executes a specified set of actions in response to certain database events or conditions. 
*/

-- Table-Level Events:
    -- INSERT, UPDATE, DELETE, TRUNCATE
-- Database-Level Events
    -- Database Startup, Database Shutdown, Connection start and end etc

-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE | TRUNCATE}
-- ON table_name
-- [FOR EACH ROW] 
-- EXECUTE FUNCTION function_name();

CREATE TABLE my_users
(
    user_name VARCHAR(50),
    email VARCHAR(100)
);

SELECT * FROM my_users;

INSERT INTO my_users VALUES('Sihab', 'sihab@email.com'), ('uthso', 'uthso@email.com');

CREATE Table deleted_users_audit
(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
);

SELECT * FROM deleted_users_audit;
CREATE OR REPLACE Function save_deleted_user()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
    BEGIN
     INSERT INTO deleted_users_audit VALUES(OLD.user_name, now());
     RAISE NOTICE 'Deleted user audit log created';
     RETURN OLD;
    END
$$;

CREATE Trigger save_deleted_user_trigger
BEFORE DELETE
ON my_users
FOR EACH row
EXECUTE FUNCTION save_deleted_user();

DELETE FROM my_users WHERE user_name = 'Sihab';