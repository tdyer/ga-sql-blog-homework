require 'pg'

$db_conn = PG.connect(dbname: 'blog')
