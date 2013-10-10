require 'pg'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

configure do 
	CONN = PG.connect(dbname: 'ga-class', host: 'localhost')
end

def query(sql)
	CONN.exec(sql)
end


get '/posts' do
	@posts = query('SELECT * FROM posts')
	erb :posts
end

get '/posts/:id' do
	post_id = params[:id]
	@post = query("SELECT * FROM posts WHERE id = #{post_id} LIMIT 1")
	erb :post_show
end

get 'posts/new' do

	erb :post_new
end

post 'posts/create' do

	erb :post_create
end
