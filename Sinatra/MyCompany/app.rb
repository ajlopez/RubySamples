# myapp.rb

require 'sinatra'

get '/' do
    @title = 'My Company'
    erb :index
end