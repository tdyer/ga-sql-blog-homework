DROP TABLE blog;

CREATE TABLE blog
(
	id SERIAL4 PRIMARY KEY,
	subject VARCHAR(100),
	contents VARCHAR(9000),
	created_at TIMESTAMP
);