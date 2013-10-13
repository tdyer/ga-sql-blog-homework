require 'pg'
require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

configure do
  CONNECTION = PG.connect(dbname: 'blog', host: 'localhost')
end

def query(sql)
  CONNECTION.exec(sql)
end

# show all posts on one page
get '/posts' do 
  @posts = query("SELECT * FROM posts")
  erb :post_index
end

# show the form to create new posts
get 'posts/new' do 
  erb :post_new
end

# 
# post '/posts/create' do 
# end

# show a single post on one page
get '/posts/:id' do
  post_id = params[:id]
  @post = query("SELECT * FROM posts WHERE id = #{post_id} LIMIT 1").first
  erb :post_show
end
