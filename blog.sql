require 'pg'
require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development? 


DROP TABLE blog; 

CREATE TABLE students
(
	id SERIAL4 PRIMARY KEY,
	subject VARCHAR, 
	contents VARCHAR, 
	created_at TIMESTAMP
);





