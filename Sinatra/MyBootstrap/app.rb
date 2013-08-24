# myapp.rb
require 'sinatra'

@@customers = [ "Customer 1", "Customer 2" ]

get '/' do
  @title = "My Bootstrap"
  erb :index
end

get '/customers' do
  @title = "Customers"
  erb :customers
end

get '/suppliers' do
  @title = "Suppliers"
  erb :suppliers
end

get '/about' do
  @title = "About"
  erb :about
end