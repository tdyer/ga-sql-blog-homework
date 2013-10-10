DROP TABLE blog;

CREATE TABLE blog
(
-- name of column - data type
	id SERIAL4 PRIMARY KEY, 
	subject VARCHAR(25),
	contents TEXT,
	created_at TIMESTAMP default CURRENT_TIMESTAMP
); 

INSERT INTO blog(subject, contents) VALUES ('Learning to program', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet volutpat arcu, vel dapibus lorem. Pellentesque fringilla, leo sed interdum feugiat, elit lectus consequat risus, a iaculis est sapien eu eros. Phasellus vulputate dui sit amet nisi fringilla aliquam. Integer ultrices fringilla orci, tincidunt sollicitudin diam dapibus a. Maecenas consequat tortor turpis. Suspendisse potenti. Vivamus eget vestibulum est. Etiam eu metus a sem egestas condimentum. Nullam arcu lorem, tristique sit amet mi vitae, venenatis viverra nunc. Vestibulum tincidunt facilisis purus eu eleifend');