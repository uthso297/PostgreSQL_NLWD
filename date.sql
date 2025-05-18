-- Active: 1747479232124@@127.0.0.1@5432@ph@public
SHOW timezone;
SELECT now();

CREATE Table timeZ(ts TIMESTAMP without time zone,tsz TIMESTAMP with time zone);

INSERT into timez VALUES('2025-05-19 1:45:00','2025-05-19 1:45:00')

SELECT * FROM timez;

SELECT CURRENT_DATE;

SELECT now()::date;
SELECT now()::time;

SELECT to_char(now(),'yyyy/mm/dd');
SELECT to_char(now(),'dd/mm/yyyy');
SELECT to_char(now(),'MONTH');
SELECT to_char(now(),'Month');
SELECT to_char(now(),'month');
SELECT to_char(now(),'DDD');

SELECT CURRENT_DATE -INTERVAL '1 year';
SELECT CURRENT_DATE -INTERVAL '1 year 2 months';

SELECT age(CURRENT_DATE,'2001-12-12');
SELECT age(CURRENT_DATE,'2001-01-12');

SELECT *,age(CURRENT_DATE,dob) from students;

SELECT extract(year FROM '2024-01-25'::date);

SELECT 1 ::BOOLEAN;
SELECT 0 ::BOOLEAN;
SELECT 'y' ::BOOLEAN;
SELECT 'n' ::BOOLEAN;