require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

# in here goes code that just runs once when sinatra is loaded
configure do
  CONN = PG.connect(dbname: 'blog-hw', host: 'localhost')
end

def query(sql)
  CONN.exec(sql)
end

#runs main page index
get '/blog' do 
  @posts = query("SELECT * FROM blog")
  erb :index
end

#deletes and redirects
post '/blog/:id/edit' do
  query("SELECT * FROM blog WHERE id=#{params[:id]} LIMIT 1").first
  erb :post_edit
end

#deletes and redirects
post '/blog/:id/delete' do
  query("DELETE FROM blog WHERE id=#{params[:id]}")
  redirect '/blog'
end

# for showing the form to create new post
get '/blog/new' do
  erb :post_new
end

#passes individual post
get '/blog/:id' do
  @post = query("SELECT * FROM blog WHERE id = #{params[:id]} LIMIT 1").first
  erb :blog_post
end



# shows for to create new post
get '/blog/create' do
  erb :post_create
end
