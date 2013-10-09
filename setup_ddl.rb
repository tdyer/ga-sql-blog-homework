require_relative './setup_db'

create_comments_table = <<CCT
CREATE TABLE comments (
    id integer NOT NULL,
    post_id integer,
    contents text,
    created_at timestamp without time zone
);
CCT

create_posts_table = <<CPT
CREATE TABLE posts (
    id integer NOT NULL,
    blog_id integer, 
    subject character varying(255),
    contents text,
    created_at timestamp without time zone
);
CPT

create_blogs_table = <<CBT
CREATE TABLE blogs (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone
);
CBT

# drop all tables
$db_conn.exec('DROP TABLE comments;')
$db_conn.exec('DROP TABLE posts;')
$db_conn.exec('DROP TABLE blogs;')

# create all tables
$db_conn.exec(create_comments_table)
$db_conn.exec(create_posts_table)
$db_conn.exec(create_blogs_table)


