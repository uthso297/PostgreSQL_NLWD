CREATE Table students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)

);

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES 
('John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2005-04-15', 'O+', 'USA'),
('Jane', 'Smith', 21, 'B', 'Biology', 'jane.smith@example.com', '2004-07-22', 'A-', 'UK'),
('Michael', 'Johnson', 19, 'A', 'Mathematics', 'michael.johnson@example.com', '2006-01-10', 'B+', 'Canada'),
('Emily', 'Brown', 22, 'C', 'Chemistry', 'emily.brown@example.com', '2003-03-30', 'AB-', 'Australia'),
('Daniel', 'Garcia', 20, 'B', 'Physics', 'daniel.garcia@example.com', '2005-11-05', 'O-', 'Mexico'),
('Sophia', 'Martinez', 18, 'A', 'English Literature', 'sophia.martinez@example.com', '2007-06-12', 'A+', 'Spain'),
('David', 'Lee', 23, 'C', 'Engineering', 'david.lee@example.com', '2002-09-18', 'B-', 'South Korea'),
('Olivia', 'Taylor', 21, 'B', 'Psychology', 'olivia.taylor@example.com', '2004-02-27', 'O+', 'New Zealand'),
('James', 'Anderson', 19, 'A', 'Economics', 'james.anderson@example.com', '2006-12-03', 'AB+', 'India'),
('Isabella', 'Thomas', 22, 'B', 'Political Science', 'isabella.thomas@example.com', '2003-08-08', 'A-', 'Germany');

SELECT email,age FROM students;
SELECT email AS s_email FROM students;
SELECT email AS "student email" FROM students;

SELECT * FROM students ORDER BY first_name ASC;
SELECT * FROM students ORDER BY first_name DESC;

SELECT country FROM students ORDER BY country ASC;

-- distinct will ignore duplicate values;
SELECT DISTINCT country FROM students; 

SELECT DISTINCT blood_group FROM students;

SELECT * FROM students WHERE country = 'USA';

SELECT * FROM students WHERE grade = 'A';
SELECT * FROM students WHERE grade = 'B' AND course= 'Physics';

SELECT * FROM students where country = 'USA' or country = 'Australia';
SELECT * FROM students where (country = 'USA' or country = 'Australia') and age = 20;

SELECT * FROM students WHERE age >= 20 and course = 'Psychology';
SELECT * FROM students WHERE age != 20;

-- <>/!=

SELECT * FROM students WHERE age <> 20;

SELECT * FROM students WHERE NOT country = 'USA';

-- scaler function
SELECT upper(first_name) FROM students;
SELECT upper(first_name) as first_name_upper_case,* FROM students;
SELECT concat(first_name,last_name) FROM students;
SELECT concat(first_name,' ',last_name) FROM students;
SELECT length(first_name) FROM students;

-- aggregate function
SELECT avg(age) FROM students;
SELECT max(age) FROM students;
SELECT min(age) FROM students;
SELECT sum(age) FROM students;
SELECT count(*) FROM students;

SELECT max(length(first_name)) from students;



INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES 
('Mike', 'Urban', 21, 'A', 'Computer Science', null, '2004-04-15', 'O+', 'USA');


-- SELECT * FROM students WHERE email = NULL; 
-- won't work , cause null is null
SELECT * FROM students WHERE email IS NULL;
SELECT * FROM students WHERE email IS NOT NULL;

-- COALESCE
SELECT COALESCE(email,'Not provided') FROM students;
SELECT COALESCE(email, 'Not provided') AS "email", * FROM students;

SELECT * FROM students where country = 'USA' or country = 'Canada' or country = 'UK';

-- alternative

SELECT * FROM students where country IN('USA','Canada','UK');
SELECT * FROM students where country NOT IN('USA','Canada','UK');


SELECT * FROM students WHERE age BETWEEN 19 AND 22;

SELECT * FROM students WHERE dob BETWEEN '2000-01-01' AND '2005-01-01';
SELECT * FROM students WHERE dob BETWEEN '2000-01-01' AND '2005-01-01' ORDER BY dob;

SELECT * FROM students WHERE first_name LIKE '%ly';
SELECT * FROM students WHERE first_name LIKE 'J%';
-- '_' underscore => single character
SELECT * FROM students WHERE first_name LIKE '_a%';

-- ILIKE => case insensitive
SELECT * FROM students WHERE first_name ILIKE 'j%';

SELECT * FROM students LIMIT 5;
SELECT * FROM students LIMIT 5 OFFSET 2;

-- pagination concept

SELECT * FROM students LIMIT 5 OFFSET 5 * 0; -- for page 1
SELECT * FROM students LIMIT 5 OFFSET 5 * 1; -- for page 2
SELECT * FROM students LIMIT 5 OFFSET 5 * 2; -- for page 3

DELETE FROM students; -- delete all rows

DELETE FROM students where grade = 'B';

SELECT * FROM students;

UPDATE students SET email = 'default@mail.com',age = 30 WHERE student_id = 9;




















