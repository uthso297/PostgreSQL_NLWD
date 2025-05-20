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

SELECT * FROM post;
SELECT * FROM "user";

-- retrieve all posts with username

SELECT title,username FROM post
    JOIN "user" ON post.user_id = "user".id;
SELECT post.id FROM post
    JOIN "user" ON post.user_id = "user".id;
SELECT "user".id FROM post
    JOIN "user" ON post.user_id = "user".id;

SELECT u.id FROM post p
    JOIN "user" u ON p.user_id = u.id;

SELECT * FROM "user"
    JOIN post ON post.user_id = "user".id;

INSERT INTO post (title, user_id) VALUES
('Post five', NULL);

SELECT * FROM "user"
    JOIN post ON post.user_id = "user".id;

SELECT * FROM post
  LEFT OUTER JOIN "user" ON post.user_id = "user".id;
SELECT * FROM post
  RIGHT OUTER JOIN "user" ON post.user_id = "user".id;
SELECT * FROM post
  FULL OUTER JOIN "user" ON post.user_id = "user".id;




