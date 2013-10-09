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

# binding.pry

# blog_posts = [entry_1, entry_2, entry_3, entry_4, entry_5]

# blog_posts.each do |post|
# 	query("INSERT INTO blog (subject, contents, created_at) VALUES ('#{post['subject']}', '#{post['contents']}', '#{post['timestamp']}')")
# end


get '/blog' do
	@result = query("SELECT * FROM blog_posts ORDER BY created_at DESC")
	erb :blog
end
