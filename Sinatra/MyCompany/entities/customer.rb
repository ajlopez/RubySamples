
require 'dm-core'

class Customer
    include DataMapper::Resource
    property :id, Serial
    property :name, String
    property :address, String
end

