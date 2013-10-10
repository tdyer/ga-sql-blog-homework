require 'pg'
require 'pry'
require 'sinatra'
require 'sinatra-reloader' if development?

configure do
  CONNECTION = PG.connect(dbname 'blog', host: 'localhost')
end

def query(sql)
  CONNECTION.exec(sql)
end

