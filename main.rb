require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

set :port, 8080

configure do 
  CONN = PG.connect(dbname: 'ga-class', host: 'localhost')
end

def query(sql)
  CONN.exec(sql)
end


gets '/blog' do 
  @entries = query("SELECT * FROM blog")
  erb :blog_index
end