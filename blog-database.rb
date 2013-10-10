
require 'sinatra'
require 'pg'
require 'sinatra/reloader'
require 'pry'

#in here goes the code that just runs once sinatra is loaded

configure do
	CONN = PG.connect(dbname: 'blog',host: 'localhost')
	end

	def query(sql)
		CONN.exec(sql)
	end

get '/blog' do
	@blog = query("SELECT * FROM blog")
	erb  :blog_index
end


# get '/post/:id' do
# 	@blog = query("SELECT * FROM blog ")
# 	@id = params[:id].to_s

# 	erb :single_post
# end