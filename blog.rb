require 'pry'
require 'pg' # this is our database gem
require 'sinatra'
require "sinatra/reloader"

configure do
	CONN = PG.connect(dbname: 'blog', host: 'localhost')
end

def query(sql)
	CONN.exec(sql)
end

get '/' do
	@blog = query("SELECT * FROM blog")
	erb :blog_index
end

get '/post/:id' do
	@blog = query("SELECT * FROM blog ")
	@id = params[:id].to_s

	erb :single_post
end