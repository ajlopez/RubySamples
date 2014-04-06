# myapp.rb

require 'sinatra'
require 'dm-core'

require './entities/customer'
require './entities/supplier'

DataMapper.finalize

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")

get '/' do
    @title = 'My Company'
    erb :index
end


