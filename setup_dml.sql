INSERT INTO blogs ( id, name, created_at) VALUES ('37', 'my_blog', '2013-10-09 15:15:55 -0400'); 

INSERT INTO posts ( id, blog_id, subject, contents, created_at) VALUES ('0', '37', 'Post 0 Subject', 'Post Body 0','2013-10-09 15:15:55 -0400'); 
INSERT INTO posts ( id, blog_id, subject, contents, created_at) VALUES ('1', '37', 'Post 1 Subject', 'Post Body 1','2013-10-09 15:15:55 -0400'); 
INSERT INTO posts ( id, blog_id, subject, contents, created_at) VALUES ('2', '37', 'Post 2 Subject', 'Post Body 2','2013-10-09 15:15:55 -0400'); 

INSERT INTO comments ( id, post_id, contents, created_at) VALUES ('1', '3', 'Blog Body 1','2013-10-09 15:15:55 -0400'); 
INSERT INTO comments ( id, post_id, contents, created_at) VALUES ('2', '3', 'Blog Body 2','2013-10-09 15:15:55 -0400'); 
INSERT INTO comments ( id, post_id, contents, created_at) VALUES ('4', '3', 'Blog Body 4','2013-10-09 15:15:55 -0400'); 
INSERT INTO comments ( id, post_id, contents, created_at) VALUES ('7', '5', 'Blog Body 7','2013-10-09 15:15:55 -0400'); 
INSERT INTO comments ( id, post_id, contents, created_at) VALUES ('8', '5', 'Blog Body 8','2013-10-09 15:15:55 -0400'); 