-- This will drop the posts table.
DROP TABLE posts;

-- 
CREATE TABLE posts
(

	id SERIAL4 PRIMARY KEY,
	subject VARCHAR(25),
	contents TEXT,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

