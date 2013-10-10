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
	@blog = query("SELECT * FROM blog ORDER BY id")
	@title = "Awesome Hipster Rantings"
	erb :blog_site 
end 

get '/blog/:id' do
	id=params[:id]
	@blog=query("SELECT * FROM blog where id = #{:id}")
	erb :one_post
end 



# get '/blog/one_post' do 
# @blog = query("SELECT * FROM blog")
# @subject=params[:subject]
# erb :one_post
# end

# posts =query("SELECT * FROM blog")

#binding.pry 

