DROP TABLE blog_posts;

CREATE TABLE blog_posts
(
	id SERIAL4 PRIMARY KEY,
	subject text,
	contents text,
	created_at timestamp default current_timestamp
);



INSERT INTO blog_posts (subject, contents, created_at) VALUES ('Around the World in 80 Days', 'He did not finish his sentence for a terrific hubbub now arose on the terrace behind the flight of steps where they stood, and there were frantic shouts of, Hurrah for Mandiboy!  Hip, hip, hurrah! ', '2011/03/21');

INSERT INTO blog_posts (subject, contents, created_at) VALUES ('The Scarlet Plague', 'On his back was a quiverful of arrows.. From a sheath hanging about his  neck on a thong, projected the battered handle of a hunting knife. He  was as brown as a berry, and walked softly, with almost a catlike tread.', '2008/4/07');

INSERT INTO blog_posts (subject, contents, created_at) VALUES ('The Wizard of Oz', 'They came from all directions, and there were thousands of them: big mice and little mice and middle-sized mice; and each one brought a piece of string in his mouth.', '2007/11/13');

INSERT INTO blog_posts (subject, contents, created_at) VALUES ('Alice in Wonderland', 'I havent the least idea what youre talking about, said Alice. Ive tried the roots of trees, and Ive tried banks, and Ive tried  hedges, the Pigeon went on, without attending to her but those  serpents! Theres no pleasing them!', '2006/12/20');


