record_store = {
    name: 'JB HiFi',
    albums: []
    address: '123 Fake Street'
}

acdc {
    name: 'ACDC'
    country: 'Australia'
    year_started: 1973
}

album1 = {
    genre: 'rock'
    title: 'Back in Black'
    artist: 'ACDC'
}

def add_album_to_store(store, album)
    store[:albums] << album
    return store
end

new_record_store = add_album_to_store(record_store, album1)

p new_record_store[:albums][0[:artist]

def search(store, title)
    store[:albums].each do |album|
        if album[:title] == title
            return true
        end
    end
    return false
end




# class RecordStore

#     attr_accessor :name :address :albums

#     def initialize(name, address)
#         @name = name
#         @address = address
#         @albums = []
#     end
# end


