DROP TABLE posts;

CREATE TABLE posts
(
  id SERIAL4 PRIMARY KEY,
  subject VARCHAR(255),
  contents TEXT,
  created_at DATE
);