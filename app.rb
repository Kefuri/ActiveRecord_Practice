require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:test.sqlite3"

require './models'

class App < Sinatra::Base

  get '/' do
    @users = User.all
    erb :index
  end

  get '/users' do
    @users = User.all
    erb :users
  end
end