require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'


configure do
	CONN = PG.connect(dbname: 'ga-class', host: 'localhost')
end


def query(sql)
	CONN.exec(sql)
end


get '/blog' do 
	@entries = query("SELECT * FROM blog")
	erb :blog_index
end

