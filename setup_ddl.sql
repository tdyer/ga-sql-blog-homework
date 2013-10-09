DROP TABLE comments;
CREATE TABLE comments (
    id integer NOT NULL,
    post_id integer,
    contents text,
    created_at timestamp without time zone
);

DROP TABLE posts;
CREATE TABLE posts (
    id integer NOT NULL,
    blog_id integer, 
    subject character varying(255),
    contents text,
    created_at timestamp without time zone
);

DROP TABLE blogs;
CREATE TABLE blogs (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone
);