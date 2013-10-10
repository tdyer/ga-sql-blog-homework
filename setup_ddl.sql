DROP TABLE blog;

CREATE TABLE blog
(
	id SERIAL4 PRIMARY KEY,
	subject VARCHAR(25),
	contents TEXT,
	created_at TIMESTAMP
);