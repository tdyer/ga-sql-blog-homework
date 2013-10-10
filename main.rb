require 'pry'
require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?

configure do
  CONN = PG.connect(dbname: 'blog', host: 'localhost')
end

def query(sql)
  CONN.exec(sql)
end

get '/blog' do
  @posts = query("SELECT * FROM posts")
  erb :index
end

get '/blog/:id' do
  id = params[:id].to_i
  @post = query("SELECT * FROM posts WHERE id = #{id}")
  erb :post
end