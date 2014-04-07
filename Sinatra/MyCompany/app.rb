# myapp.rb

require 'sinatra'
require 'sinatra/reloader' if development?
require 'data_mapper'

require './entities/customer'
require './entities/supplier'

DataMapper.finalize

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")

Customer.auto_upgrade!
Supplier.auto_upgrade!

get '/' do
  @title = 'My Company'
  erb :index
end

get '/customer' do
  @title = 'Customer List'
  @customers = Customer.all
  erb :customerlist
end

get '/customer/new' do
  @title = 'New Customer'
  erb :customernew
end

post '/customer/new' do
  customer = Customer.new
  customer.name = params[:name]
  customer.address = params[:address]
  customer.save
  redirect to('/customer')
end

get '/customer/:id' do
  @title = 'Customer'
  @customer = Customer.get(params[:id])
  erb :customerview
end

get '/customer/:id/edit' do
  @title = 'Edit Customer'
  @customer = Customer.get(params[:id])
  erb :customeredit
end

post '/customer/:id/edit' do
  customer = Customer.get(params[:id])
  customer.name = params[:name]
  customer.address = params[:address]
  customer.save
  redirect to("/customer/#{customer.id}")
end

get '/customer/:id/delete' do
  customer = Customer.get(params[:id])
  customer.destroy
  redirect to("/customer")
end

