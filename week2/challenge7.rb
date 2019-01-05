# 2. Create three classes, continent, country, and city (or extend as you like). 
# Continent class has at minimum two attributes, name (string) and countries, the second 
# which will contain an array of country objects. It will also have an instance method that 
# will add a country object to the array. Similarly, the country class will have a name (string) 
# and cities array, which will contain city objects, and also an instance method to add them.

class Continent

    attr_accessor :name, :countries

    @@continent_count = []
    @@continent_name = []

    def initialize(name)
        @name = name
        @countries = []
        @@continent_count << self
        @@continent_name << @name
    end

    def add_country_to_continent(country)
        @countries << country
    end

    def self.print_number_of_continents
        puts "You have created #{@@continent_count.count} continents"
    end

    def self.print_continents
        puts "You have created the following continents: #{@@continent_name}"
    end
    
end



class Country

    attr_accessor :name, :cities

    @@country_count = []
    @@country_name = []

    def initialize(name)
        @name = name
        @cities = []
        @@country_count << self
        @@country_name << @name
    end

    def add_city_to_country(city)
        @cities << city
    end

    def self.print_number_of_countries
        puts "You have created #{@@country_count.count} countries"
    end

    def self.print_countries 
        puts "You have created the following countries: #{@@country_name}"
    end

end

class City

    attr_accessor :name 

    @@city_count = []
    @@city_name = []

    def initialize(name)
        @name = name
        @@city_count << self
        @@city_name << @name
    end

    def self.print_number_of_cities
        puts "You have created #{@@city_count.count} cities"
    end

    def self.print_cities 
        if @@city_count.count > 0
            puts "You have created the following cities: #{@@city_name}"
        else puts "You haven't created any cities yet"
        end
    end

end

europe = Continent.new("Europe")
asia = Continent.new("Asia")
north_america = Continent.new("North America")

china = Country.new("China")
japan = Country.new("Japan")
usa = Country.new("USA")
canada = Country.new("Canada")

asia.add_country_to_continent(japan)
asia.add_country_to_continent(china)
north_america.add_country_to_continent(canada)
north_america.add_country_to_continent(usa)

tokyo = City.new("Tokyo")
beijing = City.new("Beijing")
new_york = City.new("New York")

china.add_city_to_country(beijing)
japan.add_city_to_country(tokyo)
usa.add_city_to_country(new_york)



Continent.print_number_of_continents
Country.print_number_of_countries
City.print_number_of_cities

Country.print_countries
Continent.print_continents
City.print_cities

p asia
p north_america
p china.cities




# 1. Create 3 classes for Continent, Country and City
# 2. Create an instance for each class and assign to variables 'beijing', 'china' and 'asia'.
# 3. Create a method 'add_country_to_continent' within the Continent class to store a value to the empty @countries array
# 4. Call the 'add_country_to_continent' method on 'asia' (the variable which contains the Continent object) and pass in the value of the 'china' variable (which is an object of the country class)







# 3. Extend the above by adding a class variables to each class that counts how many continents, countries, 
# and cities have been made (as relates to the class: so the Continent class will keep track of continents). 

# Add a class method that prints to screen how many continents, countries, and cities have been created in a 
# nice format (maybe use string interpolation: eg. “You have created 4 countries”). Add another class method 
# that prints the names of the objects that the class has created, or prints “You have yet to create any 
# continents/countries/cities” (as required).

