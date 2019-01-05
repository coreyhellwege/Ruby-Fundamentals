# The Company originally started in Melbourne with a product list that consisted of the following sku numbers: 

# '112334', '276834', '098464', '356498', '065134', '124589', '132548', '102334', '278834', '078464',  '356298', 
# '085134', '134589', '132598', '152334', '876834', '088464', '336498', '005134', '124580',  '132588', '102333', 
# '268834', '098464', '956298', '081134', '134889', '132698'

# They then expanded to Brisbane, and while Brisbane began with mostly the same product sku list (some items 
# they stopped stocking because they didn’t sell so well), they also had some extras and ended up with 
# the following list:
# '132588', '102333', '268834', '098464', '956698', '081134', '134889', '132698', '112334', '276834', '098464', 
# '356498', '065134', '132548', '102334', '278834', '078464', '356298', '005134', '134589', '132598',  '876834', 
# '088464', '336498', '005134', '124588'

# Head office want a complete sku list with no duplicates. 

# NB: double check that the sku values are showing as strings properly :)

melbourne_stock = [
    '112334', '276834', '098464', '356498', '065134', '124589', '132548', '102334', '278834', '078464',  '356298', 
    '085134', '134589', '132598', '152334', '876834', '088464', '336498', '005134', '124580',  '132588', '102333', 
    '268834', '098464', '956298', '081134', '134889', '132698'
    ]

brisbane_stock = [
    '132588', '102333', '268834', '098464', '956698', '081134', '134889', '132698', '112334', '276834', '098464', 
    '356498', '065134', '132548', '102334', '278834', '078464', '356298', '005134', '134589', '132598',  '876834', 
    '088464', '336498', '005134', '124588'
    ]

total_stock = melbourne_stock + brisbane_stock.uniq

# p total_stock





# 1. You are running a group of record stores. Think about the classes you might use to represent the store. 
# Make a class of store that has some sensible attributes, and that also contains an attribute to store an 
# array of artists. Now make an artist class that can be used to make artist objects and add those objects 
# to that array. You will need an instance method in your store class that can add an artist. Think about 
# your artist class and create useful methods to add a record to this class. This is an open question, so 
# you will need to think carefully about the structure you want to use to represent the data. You might not 
# make a record class - you could use another data type - but you are welcome to do so if you think it is best.

class RecordStore

    attr_accessor = :location, :employees, :records

    def initialize(location, employees = 0)
        @location = location
        @employees = employees
        @artists = []
    end

    def add_artists(artist)
        @artists << artist
    end
end

class Artist

    attr_accessor = :name, :genre

    def initialize(name, genre)
        @name = name
        @genre = genre
        @records = []
    end

    def add_record(record)
        @records << record
    end

end



allans_music = RecordStore.new("500 Bourke Street, Melbourne", 4)

broadway_records = RecordStore.new("141 West 5th Ave, New York City", 25)

michael_jackson = Artist.new("Michael Jackson", "Pop")

michael_jackson.add_record({name: "Thriller", year: 1982})

broadway_records.add_artists(michael_jackson)



p broadway_records

