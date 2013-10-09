DROP TABLE blog;

CREATE TABLE blog
(
  id SERIAL4 PRIMARY KEY,
  subject VARCHAR(100),
  contents TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO blog (subject, contents) VALUES ('Post 1', 'Hello World!');
INSERT INTO blog (subject, contents) VALUES ('Post 2', 'Hello World #2!');
INSERT INTO blog (subject, contents) VALUES ('Post 3', 'Hello World #3!');
INSERT INTO blog (subject, contents) VALUES ('Post 4', 'Hello World #4!');
INSERT INTO blog (subject, contents) VALUES ('Post 5', 'Hello World #5!');
INSERT INTO blog (subject, contents) VALUES ('Post 6', 'Hello World #6!');
INSERT INTO blog (subject, contents) VALUES ('Post 7', 'Hello World #7!');
INSERT INTO blog (subject, contents) VALUES ('Post 8', 'Hello World #8!');
INSERT INTO blog (subject, contents) VALUES ('Post 9', 'Hello World #9!');
INSERT INTO blog (subject, contents) VALUES ('Post 10', 'Hello World #10!');