require 'setup_db'

$db_conn.exec('CREATE DATABASE blog')
-- CREATE TABLE films (
--     code        char(5) CONSTRAINT firstkey PRIMARY KEY,
--     title       varchar(40) NOT NULL,
--     did         integer NOT NULL,
--     date_prod   date,
--     kind        varchar(10),
--     len         interval hour to minute
-- );
