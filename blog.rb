require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

# in here goes code that just runs once when sinatra is loaded
configure do
  CONN = PG.connect(dbname: 'blog-hw', host: 'localhost')
end

def query(sql)
  CONN.exec(sql)
end

get '/blog' do 
  @blogs = query("SELECT * FROM blog")
  erb :index
end

