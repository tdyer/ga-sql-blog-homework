require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative './setup_ddl'
require_relative './setup_dml'

set :server, 'webrick'

get '/posts' do
  posts = $db_conn.exec('SELECT * FROM posts;')
  @posts.each do |post|
    puts "post is #{post.inspect}"
  end
end

get 'post/:id' do
  erb :show_post
end
