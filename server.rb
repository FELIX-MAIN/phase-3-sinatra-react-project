require 'sinatra'
require "sinatra/activerecord"

set :database, {adapter:"sqlite3", database: "development.sqlite3"}

get '/' do
  "Ola"
end