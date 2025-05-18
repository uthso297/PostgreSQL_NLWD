-- Active: 1747479232124@@127.0.0.1@5432@ph@public

SELECT * FROM students;
SELECT country FROM students GROUP BY country;
SELECT country, count(*) FROM students GROUP BY country;
SELECT country, count(*), avg(age) FROM students GROUP BY country;
SELECT country, count(*), avg(age) FROM students 
    GROUP BY country
        HAVING avg(age) > 21;

-- count students born in each year
SELECT extract(year FROM dob) as birth_year , count(*)
    FROM students
        GROUP BY birth_year;