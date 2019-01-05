# # PROBLEM 4:
# # 100 students are sitting in a row, and each has a hat on. Their teacher walks along the line of students (starting from the same end each time). The first time he takes every hat off. On the second pass he toggles the state of every second hat (putting on if off, taking off if on), changing the ‘hat state’ of every even numbered student. The third pass he toggles every third hat. The fourth every fourth, and the fifth every fifth, and so on until he has passed the students 100 times. What is the final state of the hats (ie, which students have a hat on or off)?


hat_arr = (1..100).to_a

hat_arr.each_with_index do |hat, i|
    hat_arr[i] = false
end

def toggle(bool)
    return !bool
end

passes_counter = 0
100.times do 
    while passes_counter < 100
        toggle(hat_arr)
        passes_counter += 1
    end
end

print hat_arr






# # PROBLEM 22:
# # An allergy test produces a single numeric score which contains the information about all the allergies the person has (that they were tested for).

# # The list of items (and their value) that were tested are:
# # - eggs (1)
# # - peanuts (2)
# # - shellfish (4)
# # - strawberries (8)
# # - tomatoes (16)
# # - chocolate (32)
# # - pollen (64)
# # - cats (128)

# # So if Tom is allergic to peanuts and chocolate, he gets a score of 34.

# # Write a program that, given a person's score can tell them:
# # a) whether or not they're allergic to a given item, and
# # b) the full list of allergies.

# # allergies = Allergies.new(34)
# # allergies.allergic_to?('chocolate')
# # => true

# # allergies.allergic_to?('cats')
# # => false

# # allergies.list
# => ['peanuts', 'chocolate']



# class Allergies

#     def initialize(score)
#         @eggs = "eggs" 
#         @peanuts = "peanuts"
#         @shellfish = "shellfish"
#         @strawberries = "strawberries"
#         @tomatoes = "tomatoes"
#         @chocolate = "chocolate"
#         @pollen = "pollen"
#         @cats = "cats"
#         @score = score
#         @allergies_arr = [] 
#     end 

#     def allergic_to?(allergy)
#         until @score == 0
#             if @score >= 128 
#                 @allergies_arr << @cats 
#                 @score -= 128
#             elsif @score >= 64 
#                 @allergies_arr << @pollen
#                 @score -= 64
#             end 
#         end 
#         return string_search(@allergies_arr, allergy)
#     end 

#     def list
#         return @allergies_arr 
#     end 

#     def string_search(array, string)
#         array.each do |word|
#             if word == string
#                 return true
#             end
#         end
#         return false
#     end
# end 

# allergy = Allergies.new(192)
# p allergy.allergic_to?("pollen")
# p allergy.list







# PROBLEM 23:

# *Funny Plant*
# Scientist have discovered a new plant. The fruit of the plant can feed 1 person for a whole week and best of all, the plant never dies. Fruits needs 1 week to grow, so each weak you can harvest its fruits. Also the plant gives 1 fruit more than the week before and to get more plants you need to plant a fruit.

# Now you need to calculate after how many weeks, you can support a group of x people, given y fruits to start with.
# Input
# 15 1
# Output
# 5

# Input description:
# The input gives you 2 positive integers x and y, x being the number of people needed to be fed and y the number of fruits you start with.

# Output description:
# The number of weeks before you can feed the entire group of people.

# Explanation:
# Here you have a table that shows the growth when starting with 1 fruit. It shows when the plant is planted and how much fruit it bears each week:
# Plant 1 2 3 4 5 6 7 8 9 10 11 12 13 Total # of fruits in a harvest
# Week
# 1 0 - - - - - - - - - - - - 0
# 2 1 0 - - - - - - - - - - - 1
# 3 2 1 0 0 0 - - - - - - - - 3
# 4 3 2 1 1 1 0 0 0 0 0 0 0 0 8
# 5 4 3 2 2 2 1 1 1 1 1 1 1 1 21

# At week 1 we have 1 plant giving 0 fruits, because it has just been planted.
# When week 2 comes along we have 1 plant that gives off a fruit and then we use that fruit to plant plant 2.
# Then in week 3 we have 2 fruits from plant 1, 1 from plant 2, so we can plant 3 new plants.

# Challenge Input:
# 200 15
# 50000 1
# 150000 250

# Challenge Output:
# 5
# 14
# 9





# PROBLEM 25:

# *Balance*
# Test to see if a word ‘balances’.
# The concept is that each letter in a word has a starting value related to its position in the alphabet.
# This value is multiplied by its character distance from the pivot in the word.

# eg. aaa a aaa would balance at the fourth 'a'.
# Here the first and last 'a' would be multiplied by 3, yielding 3 (because 3 * 1 = 3), and the second and sixth would multiplied by 2, and so on.






# class WordBalancer

#     def initialize(word)
#         @word = word
#         @values = {
#             a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10, k: 11, l: 12, m: 13, n: 14, o: 15,
#             p: 16, q: 17, r: 18, s: 19, t: 20, u: 21, v: 22, w: 23, x: 24, y: 25, z: 26
#         }
#     end

#     def word_balance_checker(word)
        
#     end
# end


# olive = WordBalancer.new("olive")
# p olive.word_balance_checker("olive")








# def word_balance_checker(phrase)

#     values = {
#     a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10, k: 11, l: 12, m: 13, n: 14, o: 15,
#     p: 16, q: 17, r: 18, s: 19, t: 20, u: 21, v: 22, w: 23, x: 24, y: 25, z: 26
# }

#     values.each_with_index do |word, index|
#         if phrase == word.sum
#             puts true
#         else 
#             puts false
#         end
#     end    
# end

# olive = word_balance_checker("olive")

# p olive









# # set up our abstracted train line
# train_line = ["a", "b", "c", "d", "e", "f"]
# # set up our data that we will pass around
# journey_hash = {
#     line: train_line,
#     origin: nil,
#     destination: nil,
#     origin_index: nil,
#     destination_index: 4,
#     journey_array: []
# }

# def get_user_options(hash)
#     print "The stations are: " 
#     print hash[:line]
#     puts "What is your starting station? "
#     hash[:origin] = gets.strip
#     puts "What is your destination station? "
#     hash[:destination] = gets.strip
#     return hash
# end

# def get_journey_indexes(hash)
#     hash[:line].each_with_index do |station, i|
#         if hash[:origin] == station
#             hash[:origin_index] = i
#         end
#         if hash[:destination] == station
#             hash[:destination_index] = i
#         end
#     end
#     return hash 
# end

# def get_journey(hash)
#     journey_start_index = hash[:origin_index]
#     journey_end_index = hash[:destination_index]
#     if journey_start_index < journey_end_index
#         while journey_start_index <= journey_end_index
#             hash[:journey_array] << hash[:line][journey_start_index]
#             journey_start_index += 1
#         end
#     else
#         while journey_start_index >= journey_end_index
#             hash[:journey_array] << hash[:line][journey_start_index]
#             journey_start_index -= 1
#         end
#     end
#     return hash
# end

# def print_journey(hash)
#     puts "Your origin is: " + hash[:origin]
#     puts "Your destination is: " + hash[:destination]
#     puts "You will follow this set of stations:"
#     hash[:journey_array].each do |station|
#         puts "Station: " + station
#     end
# end 

# journey_hash = get_user_options(journey_hash)
# journey_hash = get_journey_indexes(journey_hash)
# journey_hash = get_journey(journey_hash)
# print_journey(journey_hash)