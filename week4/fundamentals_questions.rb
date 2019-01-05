# 1. Make a method that takes two arguments, and returns the result of them added together.

def add_together(argument1, argument2)
    answer = argument1 + argument2
end

# 2. Call the above method four times with different inputs each time. Make at least some of the inputs floats.

p add_together(2,4)
p add_together(20, 5)
p add_together("hello", "world")

# 3. Define two integer and two float variables, and use them as arguments to this method you have made.

int_var = 4
float_var = 2.0

p add_together(int_var, float_var)

# 4. Make a hash with four keys, and have the keys be three different data types.

car = {
    make: "Ford",
    engine: "Petrol",
    cylinders: 8,
    rwd: true
}
# 5. Access two of the values in your hash, and puts them to the screen.

puts car[:make]
puts car[:rwd]

# 6. Define a class that has three attributes. Set one of those attributes at the time objects are initialised. Make one attribute readable, and the other two writeable.

# 7. Make two instance methods in the class you defined that do something basic (anything you like).

class Car 
    attr_reader :brand
    attr_accessor :model, :year

    def initialize(brand = "Ford", model, year)
        @brand = brand
        @model = model
        @year = year
    end

    def start(car)
        puts "Vroom!"
    end

end

# 8. Make eight objects from the class you just made.

mustang = Car.new("Mustang", 1968)
falcon = Car.new("Falcon", 2014)
focus = Car.new("Focus", 2008)


# 9. Puts out an attribute of four of the objects (instances of the class) that you made.

puts mustang.brand
puts falcon.year
puts focus.model

# 10. Assign three values to attributes of the objects you have made (those that have write access).


# puts mustang.year.push(1982)

# 11. Define a function that takes a hash as the input, and puts out the value of one of the keys of the hash.

def display_value(hash)
    puts hash[:key]
end

display_value({key: 1, word: "hello"})

# 12. Make a hash with three keys and values, and assign it to a variable.

john = { 
    first_name: "John",
    middle_name: "Albert",
    last_name: "Smith"
}

# 13. Make four more hashes with the same keys.

sarah = {
    first_name: "Sarah",
    middle_name: "Kate",
    last_name: "Black"
}

alex = {
    first_name: "Alex",
    middle_name: "James",
    last_name: "Brown"
}

# 14. Access a value from three of these hashes.

puts alex[:first_name]

# 15. Define a variable that will be assigned an empty array.

people = []

# 16. Define a function that takes an array and a hash as arguments. The function will push the hash into the array given.

def masher(array, hash)
    array << hash
end

# 17. Using the method, the four hashes, and the array that you have made in the previous steps, call the method four times to put four hashes into the array.

masher(people, alex)
masher(people, sarah)
masher(people, john)

# 18. Make sure that the array contains four hashes (maybe puts).

puts people

# 19. Access two elements of the array that you have created (via an index)

puts people[1]
puts people[0]

# 20. For one of these, now access one of the values of the hash at that index.

puts people[0][:middle_name]

# 21. Make a class that has six attributes and three instance methods. Set two of the attributes when the objects are initialised, but do this by passing a hash as the argument.

# 22. Make two of the attributes readable, three writeable, and one both readable and writable.

# 23. Write two instance methods for the class you just made.

class Coffee
    
    attr_accessor :price
    attr_reader :origin, :flavour
    attr_writer :colour, :weight, :size,

    def initialize(hash)
        @origin = hash[:origin]
        @flavour = hash[:flavour]
        # @colour = colour
        # @weight = weight
        # @size = size
        # @price = price
    end

    def add_origin(hash)
        @origin << hash[0]
        @flavour << hash[1]
    end

    def add_price(cost, gst)
        @price << (cost + gst)
    end

    def weight_converter(weight)
        weight_in_kg = weight / 1000
        puts "#{weight_in_kg}kg"
    end
end

# 24. Make five objects from the class you made.

bean1 = Coffee.new(origin: "Africa", flavour: "Vanilla")
p bean1

# 25. Puts the value of three separate object’s attributes.

puts bean1.flavour

# 26. Call the instance methods of three of these objects.

bean1.weight_converter(3000)


class Apple

    def initialize(hash)
        @type = hash[:type]
        @size = hash[:size]
    end
end

