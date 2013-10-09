require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative './setup_ddl'
require_relative './setup_dml'

set :server, 'webrick'

