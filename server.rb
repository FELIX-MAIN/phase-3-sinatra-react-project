require 'sinatra'
require "sinatra/activerecord"

set :database, {adapter:"sqlite3", database: "development.sqlite3"}

class Room < ActiveRecord::Base
end

get '/' do
  "Ola"
end

post '/rooms' do
  @room = Room.find_or_create_by(name: params[:name])
end
