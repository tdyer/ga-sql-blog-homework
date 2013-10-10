CREATE TABLE posts
(
id SERIAL4 PRIMARY KEY,
subject TEXT,
post TEXT,
created_at VARCHAR(25) 
);

INSERT INTO posts (subject, created_at) VALUES ('Raisin in the Sun at the Huntington', 'March 28th, 2013');
