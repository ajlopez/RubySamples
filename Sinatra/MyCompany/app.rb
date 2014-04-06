# myapp.rb

require 'sinatra'
require 'dm-core'
require 'dm-migrations'

require './entities/customer'
require './entities/supplier'

DataMapper.finalize

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")

# Customer.auto_migrate!
# Supplier.auto_migrate!

get '/' do
    @title = 'My Company'
    erb :index
end

get '/customer' do
    @title = 'Customer List'
    @customers = Customer.all
    erb :customerlist
end

get '/supplier' do
    @title = 'Supplier List'
    @suppliers = Supplier.all
    erb :supplierlist
end
