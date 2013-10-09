# SQL Blog

##Prereqs
- SQL
- Sinatra
- Ruby

## Learning Objectives
- Anatomy of a database (table, row, column, index, etc.)
- Basic understanding that column data types exist and are different
- Develop a level of proficiency with postgres.
- Develop a level of proficiency with psql command line utility.
- Data manipulation, aka DML. (SELECT, INSERT etc.)
- Data definition, aka DDL. (CREATE TABLE, ADD COLUMN, etc.)
- Use SQL scripts to load/manipulate data

## Requirements
We are going to create a Blog using Sinatra and SQL. This Blog will have a set of Posts and each Post will have a set of Comments.

### Step 1, Create a Comments table with the following columns:
- id *(primary key)*
- post_id *(foreign key)*
- contents *(text for this Comment)*
- created_at *(time when this Comment was created)*

### Step 2, Create a Posts table with the following columns:
- id *(primary key)*
- blog_id *(foreign key)*
- subject *(Subject text of this Post)*
- contents *(Post)*
- created_at *(time when this Post was created)*

### Step 3, Create a Blogs table with the following columns:
- id *(primary key)*
- name *(name of this Blog)*
- created_at *(time when this Blog was created)*

### Step 4, Populate the Database with one Blog that has Posts and Comments.
Create a setup.rb file where these tables are populated.

### Step 5, Create a Sinatra app that will:
- Show all the Posts in a Blog.
- Show all the Comments for a Post.
- Create a Post in the Blog.
- Create a Comment in a Post.

#### Extra:
- Delete a Comment
- Edit a Post, subject and contents.
- Edit a Comment
- Add updated_at columns for each Table and set it to the time the Table entry was last modified/updated.


## Help
#### [SQL QuickRef](http://http://www.w3schools.com/sql/sql_quickref.asp)
#### [Simply SQL Book](https://docs.google.com/viewer?url=http%3A%2F%2Ffiles.joshuaharper.com%2FWebsites_files%2FCode%2520Resources%2FeBooks%2FPHP_MySQL_XML%2FSimply_SQL.pdf)
#### [Data Definition Language (DDL)](http://http://www.postgresql.org/docs/9.3/static/ddl.html)
#### [Data Manipulation Language (DML)](http://www.postgresql.org/docs/9.3/static/dml.html)
#### [Data Types](http://www.postgresql.org/docs/9.3/static/datatype.html)
#### [PSQL](http://www.postgresql.org/docs/9.3/static/app-psql.html)
#### [PSQL Cheat Sheet](http://cheat.errtheblog.com/s/postgresql)
