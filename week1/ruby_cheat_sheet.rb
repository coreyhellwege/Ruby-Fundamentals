something = ["dog", "cat", "bird"]

case something
    when "cat"
    else
        puts "i'm a robot"
end

# Case Statement - Sets a variable which you are going to work with
# When Statement - A condition which will be evaluated against the case statement
# Else Statemnet - What will be executed if none of the when statements are true

counter = 0
while counter < 5
    counter = (counter + 1)
    print "#{counter} enter your name: "
end

# While Statement - Executes code repeatedly as long as the condition is true

person = nil
person.nil?
# true

# Nil Statement - The absense of data. Can be coerced into false.


# && (And) Statement - Will return True if both values equate to True

# || (Or) Statement - Will return True if either value equates to True




# Use the Ruby inbuilt pseudorandom to create an array of 100 random numbers

random_numbers = []
100.times do
    random_numbers.push(rand(1..100))
end
puts random_numbers



# Object Orientated programming in Ruby:
class Hamburger

    attr_reader :price 
    attr_accessor :patty, :cheese, :bun, :condiments 

    def initialize(patty, bun, condiments, cheese)
        @patty = patty #string
        @bun = bun #string
        @condiments = condiments #array of strings
        @cheese = cheese
        @price = 450
    end


end

hamburger1 = Hamburger.new('beef', 'brioche', ['tomato sauce'], true)
hamburger2 = Hamburger.new('chicken', 'sesame', ['onion relish', 'mayo'], true)
hamburger3 = Hamburger.new('veggie patty', 'turkish', ['mayonnaise'], true)

hamburger1.cheese = false
puts hamburger1.cheese

hamburger1.patty = 'chicken'
puts hamburger1.patty
hamburger1.price = 0.00

hamburger1.condiments.push('mustard')
hamburger1.condiments.each do |condiment|
    puts condiment
end



# Functional programming in Ruby:
hamburger4 = {
    price: 450,
    condiments: [],
    patty: 'beef',
    cheese: true
}



def print_hamburger_price(hamburger)
    puts hamburger[:price]
end

def change_hamburger_price(hamburger, price)
    hamburger[:price] = price
end

change_hamburger_price(hamburger4, 500)
print_hamburger_price(hamburger4)

