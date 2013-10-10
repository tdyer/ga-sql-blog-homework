require 'pry'
require 'pg' # this is our database gem
require 'sinatra'
require "sinatra/reloader" if development?

configure do
	CONN = PG.connect(dbname: 'ga-blog', host: 'localhost')
end

def query(sql)
	CONN.exec(sql)
end

get '/' do
	@blog = query("SELECT * FROM blog")
	erb :blog_index
end

get 'post/:id' do
	@blog = query("SELECT * FROM blog WHERE id = #{id} LIMIT 1").first
	@id = params[:id]

	erb :one_post
end