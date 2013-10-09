# SQL Blog

##Prereqs
- SQL
- Sinatra
- Ruby

## Requirements
We are going to create a Blog using Sinatra and SQL. This Blog will have a set of Posts.

### Step 1, Create a Database named blog
- Use the psql command line utility for this.


### Step 2, Create a Posts table with the following columns:
*Create the SQL in the setup_ddl.sql file, and load this file into the DB using psql.*

- id *(primary key)*
- subject *(Subject text of this Post)*
- contents *(Post)*
- created_at *(time when this Post was created)*

### Step 3, Populate the Database with Posts
*Create the SQL in the setup_dml.sql file, and load this file into the DB using psql.*

- **Note: This SQL is created in the setup_dml.sql file!!**

### Step 4, Create a Sinatra app that will:
- Use the [pg gem](https://bitbucket.org/ged/ruby-pg/wiki/Home) to connect to the blog database.
- Use the pg gem to execute the SQL that will read the posts from the database.
- Show all the posts in the database, which link to their individual posts.
- Show individual posts

#### Extra Special Bonus (if this was easy, you should do these):
- Use Sinatra to create, update and delete posts. You'll need to use HTML forms and POST requests. Updating and deleting will be harder than creating. 
- Create a setup_ddl.rb and setup_dml.rb that will use the Ruby and pg gem to populate the database.


## Help
#### [SQL QuickRef](http://http://www.w3schools.com/sql/sql_quickref.asp)
#### [Simply SQL Book](https://docs.google.com/viewer?url=http%3A%2F%2Ffiles.joshuaharper.com%2FWebsites_files%2FCode%2520Resources%2FeBooks%2FPHP_MySQL_XML%2FSimply_SQL.pdf)
#### [Data Definition Language (DDL)](http://http://www.postgresql.org/docs/9.3/static/ddl.html)
#### [Data Manipulation Language (DML)](http://www.postgresql.org/docs/9.3/static/dml.html)
#### [Data Types](http://www.postgresql.org/docs/9.3/static/datatype.html)
#### [PSQL](http://www.postgresql.org/docs/9.3/static/app-psql.html)
#### [PSQL Cheat Sheet](http://cheat.errtheblog.com/s/postgresql)
