# myapp.rb
require 'sinatra/base'

@@customers = [ "Customer 1", "Customer 2" ]

class MyApp < Sinatra::Base

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

    run! if app_file == $0
end

