=begin
*Warm up*
Take a look at the following list, can you identify which are attributes and which are methods?
1. star_sign - method
2. write_code - method
3. date_of_birth - method
4. clothes - attribute
=end


=begin
Challenge 1
- Build a Cat class
1. Each cat should have a name
2. Implement a speak method to say meow.
3. Add each cat's name to the speak method (Pixie says meow).
=end

class Cat

    attr_accessor(:cats_name, :cat_speaks)

    def initialize(cats_name, cat_speaks = "says meow")
        @cats_name = cats_name
        @cat_speaks = cats_name + " " + cat_speaks
    end

    

end

felix = Cat.new('Felix')
puts felix.cats_name
puts felix.cat_speaks


# *More Challenges*
# 1. Create a Dog class. Code it so the name and age of the dog is set in the initialize function.
# 2. We've got name and age, let's give each dog a location too. Test your location works by printing the dog's location.
# 4. Create a walk method. This should say "I have been for X walks.". Every time you call walk, the number should increase by one E.g:
# 5. doggo = Dog.new(...)
# doggo.walk # -> I have been for 1 walks today
# doggo.walk # -> I have been for 2 walks today
# 6. Update the walk method so it only increases the walk count. Create a new method to display walks. E.g.: doggo = Dog.new(...)
# doggo.walk # -> Shouldn't print anything on screen
# doggo.walk # -> Shouldn't print anything on screen
# doggo.display_walks # -> I have been for 2 walks today
# 7. Update the walk method so you can chain walk commands. E.g.: doggo = Dog.new(...)
# doggo.walk.walk.display_walks # -> I have been for 2 walks today
# *Beast Mode*
# 1. Improve the walk method. Accept a location and a distance. e.g. doggo.walk('Brisbane', 20)
# 2. Update your display_walks method to show all of the walk details.
# 3. Implement a total_distance method to calculate the total distance of all the walks.
# 4. Track the time each walk is created. Update display_walks to show it back to your user in a readable format.

# 5. Research ruby gems. Use a gem to geocode a location and store it's latitude + longitude. E.g. "Brisbane" stores -27.44888,153.00531

class Dog

    attr_accessor(:dog_name, :dog_age, :dog_locations, :walk_data)

    def initialize(dog_name, dog_age, dog_locations)
        @dog_name = dog_name
        @dog_age = dog_age
        @dog_locations = dog_locations
        @dog_walk_counter = 0
        @walk_distance = 0
        @walk_data = []
    end

    def walk(location, distance, time)
        @walk_location = location
        @walk_distance = distance
        @walk_time = time
        @walk_data << {loc: location, dis: distance, tim: time}
        @dog_walk_counter += 1
        self
    end

    def display_walks
        puts "I have been for #{@dog_walk_counter} walks today"
        puts "The location was #{@walk_location}"
        puts "The distance was #{@walk_distance}km"
        puts "The time was #{@walk_time}"
    end

    def total_distance_calc
        total_distance = @walk_data.map do |distance| # .map creates an array to store each evaluation of the @walk_data variable
            distance[:dis] # we're only taking the value of 'dis:' from the @walk_data variable
            # we then store all of this in a variable called 'total_distance"
    end 
        return "The total distance that #{dog_name} walked today is #{total_distance.sum}km" # this adds up all of the distances
    end

end

roger = Dog.new('Roger', 5, 'Melbourne')
scooby = Dog.new('Scooby', 3, 'Brisbane')
puts roger.dog_locations

scooby.walk("highett", 3, "14:00")
scooby.walk("moorabbin", 5, "18:30")
scooby.walk("bentleigh", 7, "12:00")

puts scooby.total_distance_calc
puts scooby.display_walks

p scooby.walk_data