SELECT * FROM person2;

ALTER TABLE person2 ADD COLUMN email VARCHAR(50) DEFAULT 'default@mail.com' NOT NULL;

INSERT INTO person2 VALUES(5,'Sihab Mahmud Uthso',27,'uthso@gmail.com');

ALTER Table person2 DROP COLUMN email;

ALTER TABLE person2 RENAME COLUMN age to person_age;

ALTER Table person2 ALTER COLUMN user_name type VARCHAR(50);

ALTER Table person2 ALTER COLUMN person_age set NOT NULL;
ALTER Table person2 ALTER COLUMN person_age DROP NOT NULL;

ALTER TABLE person2 ADD constraint unique_person2_person_age UNIQUE(person_age);

ALTER TABLE person2 DROP constraint unique_person2_person_age;


SELECT * FROM person3;

INSERT INTO person3 VALUES(1,'Uthso',24);

TRUNCATE Table person3;

