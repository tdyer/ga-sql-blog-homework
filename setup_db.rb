require 'pg'

# Create a global connection to the blog database
$db_conn = PG.connect(dbname: 'blog')
