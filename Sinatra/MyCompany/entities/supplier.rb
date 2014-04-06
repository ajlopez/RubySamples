
require 'dm-core'

class Supplier
    include DataMapper::Resource
    property :id, Serial
    property :name, String
    property :address, String
end
