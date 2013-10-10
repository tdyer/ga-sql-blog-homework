require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

configure do
	CONN = PG.connect(dbname: 'blog', host: 'localhost')
end

def query(sql)
	CONN.exec(sql)
end

get '/blog/new' do
	@entry = query("SELECT * FROM blog")
	erb :blog_view
end