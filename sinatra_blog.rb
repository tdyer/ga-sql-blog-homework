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

get '/blog/:id/edit' do
  id = params[:id]
  @post = query("SELECT * FROM blog WHERE id = #{id} LIMIT 1").first
  erb :post_edit
end

get '/blog/:id' do
	id=params[:id]
	@blog=query("SELECT * FROM blog where id = #{id}")
	erb :one_post
end 


post '/blog/:id/delete' do 
	id = params[:id]
	query("DELETE FROM blog where id= #{id}")
	redirect '/blog'
end 

get '/blog/new' do 
erb :new_post 
end 

post '/blog/create' do 
	subject = params[:subject]
	contents = params [:contents]
	query("INSERT INTO blog (subject, contents) VALUES ('#{subject}', '#{contents}')")
	redirect '/blog'
end 

post '/blog/:id/update' do
id = params[:id]
subject = params[:subject]
contents = params[:contents]
query("UPDATE blog SET subject='#{subject}', contents='#{contents}' WHERE id= #{id}")
redirect "/blog"
end

#binding.pry 








# get '/posts' do
# 	@posts = query("SELECT * FROM blog")
# 	erb :post_index
# end

# get '/posts/:id/edit' do
#   post_id = params[:id]
#   @post = query("SELECT * FROM blog WHERE id = #{post_id} LIMIT 1").first
# 	erb :post_edit
# end

# post '/posts/:id/delete' do
# 	post_id = params[:id]
# 	query("DELETE FROM blog WHERE id=#{post_id}")
# 	redirect '/posts'
# end

# # This will be for showing the form to create new posts
# get '/posts/new' do
# 	erb :post_new
# end

# get '/posts/:id' do
# 	post_id = params[:id]
# 	@post = query("SELECT * FROM blog WHERE id = #{post_id} LIMIT 1").first
# 	erb :post_show
# end

# post '/posts/create' do
# 	title = params[:title]
# 	body = params[:body]
# 	query("INSERT INTO blog (title, body) VALUES ('#{title}', '#{body}')")
# 	redirect '/posts'
# end

# post '/posts/:id/update' do
# 	post_id = params[:id]
# 	title = params[:title]
# 	body = params[:body]
# 	query("UPDATE blog SET title='#{title}', body='#{body}' WHERE id= #{post_id}")
# 	redirect "/posts/#{post_id}"
# end

