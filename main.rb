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

# show all posts index page
get '/posts' do 
  @posts = query("SELECT * FROM posts")
  erb :post_index
end

# show the form to edit a given post
get '/posts/:id/edit' do
  post_id = params[:id]
  @post = query("SELECT * FROM posts WHERE id = #{post_id} LIMIT 1").first
  erb :post_edit
end

# show the form to create new posts
get '/posts/new' do 
  erb :post_new
end

# show a single post on its own page
get '/posts/:id' do
  post_id = params[:id]
  @post = query("SELECT * FROM posts WHERE id = #{post_id} LIMIT 1").first
  erb :post_show
end

# submit new post and show created post on index page
post '/posts/create' do 
  title = params[:title]
  content = params[:content]
  query("INSERT INTO posts (subject, contents, created_at) VALUES ('#{title}', '#{content}', CURRENT_DATE)")
  redirect '/posts'
end

# submit edited post and show updated post on index page
post '/posts/:id/update' do
  post_id = params[:id]
  title = params[:title]
  content = params[:content]
  query("UPDATE posts SET subject='#{title}', contents='#{content}' WHERE id=#{post_id}")
  redirect "posts/#{post_id}"
end