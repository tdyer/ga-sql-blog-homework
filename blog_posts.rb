require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

configure do 
	CONN = PG.connect(dbname: 'blog', host: 'localhost')
end

def query(sql)
	CONN.exec(sql)
end


get '/blog' do
	@result = query("SELECT * FROM blog_posts ORDER BY created_at DESC")
	erb :blog
end

get '/blog/:id' do
	id = params[:id]
	@result = query("SELECT * FROM blog_posts WHERE id='#{id}'")
    erb :full_text
end

