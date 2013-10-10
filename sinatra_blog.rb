require 'pg'
require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development? 

 
configure do 
	CONN = PG.connect(dbname: 'blog', host: 'localhost')
end 

def query(sql) 
	CONN.exec(sql)
end 

get	'/blog' do  
	@blog = query("SELECT * FROM blog")
	erb :blog_site 
end

