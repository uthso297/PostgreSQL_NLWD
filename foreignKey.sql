-- Active: 1747479232124@@127.0.0.1@5432@ph@public
CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);
CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INT REFERENCES "user"(id)

);

INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);

SELECT * FROM "user";
SELECT * FROM post;

INSERT INTO post (title, user_id) VALUES
('Bla bla blackship', NULL);

-- to prevent null we have to set constraint not null

ALTER TABLE post ALTER COLUMN user_id set NOT NULL;

DELETE FROM "user" 
        WHERE id = 4; -- default behaviour 

DROP TABLE post;
DROP Table "user";

-- on delete cascade

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INT REFERENCES "user"(id) ON DELETE CASCADE

);


DELETE FROM "user" 
        WHERE id = 4;

-- on delete set null

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INT REFERENCES "user"(id) ON DELETE SET NULL

);

DELETE FROM "user" 
        WHERE id = 4;

-- on delete set default

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INT REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2

);

DELETE FROM "user" 
        WHERE id = 4;







