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

# show the form to create new posts
get '/posts/new' do 
  erb :post_new
end

# submit new post and show created post on index page
post '/posts/create' do 
  title = params[:title]
  content = params[:content]
  query("INSERT INTO posts (subject, contents) VALUES ('#{title}', '#{content}')")
  redirect '/posts'
end

# show a single post on its own page
get '/posts/:id' do
  post_id = params[:id]
  @post = query("SELECT * FROM posts WHERE id = #{post_id} LIMIT 1").first
  erb :post_show
end

