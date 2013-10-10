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

post '/blog/entry' do 
  @id = params[:id].to_s
  
  @subjecta = query("SELECT subject FROM blog WHERE id = '#{@id}'")
  @subjecta.each do |subject|
    @subject = subject["subject"]
  end
  
  @contenta = query("SELECT contents FROM blog WHERE id = '#{@id}'")
  @contenta.each do |content|
  @content = content["contents"]
  end

  @createda = query("SELECT created_at FROM blog WHERE id = '#{@id}'")
  @createda.each do |date|
  @created = date["created_at"]
  end

  erb :blog_entry
end