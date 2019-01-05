# INHERITANCE




# 1. Implement a Vehicle class. It should accept make and model properties when you create an object.
# E.g. civic = Vehicle.new("Honda", "Civic")

class Vehicle

    attr_accessor :make, :model, :fuel_level

    def initialize(make, model, fuel_level = 0)
        @make = make
        @model = model
        @fuel_level = fuel_level
    end

        def refuel(litres)
            @fuel_level += litres
            puts "The fuel level is #{@fuel_level} litres"
        end
end

# 2. Implement a Car class. It should inherit from Vehicle.
# E.g. civic = Car.new("Honda", "Civic")

class Car < Vehicle
    
    attr_accessor :number_doors, :number_seats

    def initialize(number_doors, number_seats)
        @number_doors = number_doors
        @number_seats = number_seats
    end

        def wind_up_windows
            puts "The cars windows are up"
        end
end

# 3. Implement a Motorbike class. It should also inherit from Vehicle.
# E.g. low_rider = Motorbike.new("Harley Davidson", "Low Rider")

class Motorbike < Vehicle

    attr_accessor :chain_type

    def initialize(make, model, fuel_level, chain_type)
        super(make, model, fuel_level) # ask Ruegen about this??
        @chain_type = chain_type
    end

        def wheelie
            puts "The motorbike did a wheelie"
        end
end

# 4. Implement the following methods, but first, decide where they should live.
# refuel (should take one argument: litres)
# wheelie (should display a message)
# wind_up_windows (should display a message)
# fuel_level (should display total litres in the tank)

p harley_davidson = Motorbike.new("Harley Davidson", "Mustang", 20, "steel")
harley_davidson.refuel(100)
p harley_davidson.fuel_level






