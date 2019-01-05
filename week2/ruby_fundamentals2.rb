# PROBLEM 10

# Write a method that takes one argument, a number, and that returns true if the number is divisible by three, and false otherwise. 

# Write another method that takes an array (of numbers) as an argument. This method will return two arrays, in one array (an array of arrays), the first array containing the numbers that are divisible by 3, and the other of the rest of the numbers. use the first function to achieve this. For example, if you pass the second number [9, 4, 3, 5, 30, 2, 8] it would return [[9, 3, 30],[4, 5, 2, 8]].



def divisible_by_three(number)
    if number % 3 == 0 
        return true
    else 
        return false 
    end
end

divisible_by_three(6)

def separator(array)
    divisible_by_three = []
    not_divisible_by_three = []
    array.each do |number|
        if divisible_by_three(number)
            divisible_by_three.push(number)
        else
            not_divisible_by_three << number
        end
    end
    return [divisible_by_three, not_divisible_by_three]
end

result = separator([2,3,4,5,6,7,8])
print result





# PROBLEM 12

# Write a method that takes two arrays of numbers, both of the same length. It will return an array in which each element is the result of the corresponding elements in the two array arguments added together. Make a call to your method, and store the result in a well-named variable.

def array_addition_calc(array1, array2)
    array1.zip(array2).map &:sum 
end

combined_array = array_addition_calc([2,4,5], [3,6,9])

p combined_array





# PROBLEM 15

# Using these actual figures, make a method (or methods) that takes as an argument a person’s income, and returns the amount of tax that should be paid on that income. Return a hash of the raw tax payable (in dollars), and what what percentage of the person’s income that represents.
# $0 – $18,200 Nil
# $18,201– $37,000 19c for each $1 over $18,200
# $37,001 - $87,000 $3,572 plus 32.5c for each $1 over $37,000
# $87,001 - $180,000 $19,822 plus 37c for each $1 over $87,000
# $180,001 and over $54,232 plus 45c for every $1 over $180,000


def total_tax(name, income)
    tax_payable = {}
    
    if income <= 18200
        puts "you are not required to pay any tax"
    elsif income > 18200 
        tax_payable = (income - 18200) * 0.19
        tax_percentage = (tax_payable / income) * 100/1
        puts "you have to pay $#{tax_payable.to_i} tax, which is #{tax_percentage.to_i}% of your total income"
    elsif income > 37000
        tax_payable = (3572 + (income - 37000)) * 0.325
        tax_percentage = (tax_payable / income) * 100/1
        puts "you have to pay $#{tax_payable.to_i} tax, which is #{tax_percentage.to_i}% of your total income"
    end
end

total_tax("John Smith", 50000)







# *Problem 16*
# Write a method that asks the user for a salary (as number), and a percentage. The percentage will be a guess by the person as to how much tax is paid on a certain salary. Using the previous method (Problem 15), return a hash of the guess, the actual percentage, and the difference between the two (a three key hash). Write to screen each of these in a readable format. (You might consider cleaning the user input as a small extension.)


# def tax_calc(income, percentage_estimate)
#         case total_tax(name, income)
#             when 
#         puts "You estimated that you paid #{percentage_estimate}% tax"
        
# end

# tax_calc(30000, 8)







# PROBLEM 21

# *Word Enemies*
# Words are going into battle, hurling letters from one to the other. Your function takes in two words (strings) as arguments. The letters that are the same in each word cancel each other out. The letters have the value of their position in the alphabet (a=1, b=2..)
# Output which word won the war.


def word_battle(string1, string2)
    
    string2_letters = string2.split""
    string1_letters = string1.split""

    string1_letters - string2_letters
        
    if string1_letters.count > string2_letters.count
        puts "#{string1} wins"
    else
        puts "#{string2} wins"
    
    end
    
end

word_battle("elephant", "snake")



# Revision

# Loops - What's inside the pipes are placeholders for each item in the array which will run in the loop

# Object oriented programming - methods and attributes


# japan = country.new("Japan")
# asia.add_country(japan)

# for asia.countries.each do |country_object, 3| # the first thing in the pipes will be the item, the second will be the item's index
#     puts country_object.name
# end

# The above loop is taking each country added to 'countries', referring to them with the temporary placeholder 'country_object', and then printing each countries name.

# constantly test your code and fix little problems as you go. Don't let lots of problems add up. Baby steps










# .MAP

x = [1,2,3].map do |num|
    num.to_s + '1'
end

p x



fruit=['banana', 'apple', 'pear']

x = fruit.map do |fru|
    fru + "s"
end

p fruit
p x
p "this is a new array containing the .map method: #{x}"


cars=['ford', 'holden', 'bmw']

b = cars.map { |make| make + "s" }

p b



vegetables = ["carrot", "celery", "tomato", "carrot"]

d = vegetables.select { |vege| vege != "carrot" }
p "this selects each value not equal to carrot #{d}"




carrots = vegetables.select { |vege| vege == "carrot" }
carrots_count = carrots.count
puts "the number of carrots: #{carrots_count}"

puts [[1,2,3],[1,2,3],[7,7,7]].reduce(0) {|acc, arr| acc + arr.reduce(0, :+)}

carrots.each do |carrot|
    puts "nom nom nom"
end

l = vegetables.reduce("") { |acc, word| acc += word[0] }
p "this takes each word in the array and makes it equal to the first letter: #{l}"




numbers = [1,2,3,4,5]

f = numbers.reduce(0) { |acc| acc + 1 } # acc is reffering to the .reduce method which is taking each index value in the array starting at index 0
p "this adds 1 to each index in the array, which is: #{f}"

h = numbers.reduce(0) { |acc, num| acc + num }
p "this takes each index value in the array and then adds the value, which is #{h}"




def in_array(arr, word)
    index = 0
    while index < arr.length
        if word == arr[index]
            return true # stops early if it finds the word
        end
        index += 1
    end
    return false # defaults to false if it cant find the word
end

puts in_array(['apple', 'banana', 'orange'], 'apple')









def is_divisible_by_three?(number)
    number % 3 == 0
end

def partition_divisible_by_three(array)
    by_three = [] # create an empty array for one set of results
    rest = [] # create another empty array for the other results
    array.each do |num| # use .each to loop over the array passed into the method
        if is_divisible_by_three?(num) # use the previous method to check the array values
            by_three << num # assign the results to the first empty array variable
        else
            rest << num # assign the other results to rest
        end
    end
    return [by_three, rest] # return a combined array containing both variables
end

p partition_divisible_by_three([3,4,5,6,9])








def string_search(array, string)
    array.each do |word|
        if word == string
            return true
        end
    end
    return false
end


p string_search(["word", "another"], "word")






    def array_splitter(array)

        array.each do |arr|
        
        puts arr
        end
    end
        
 array_splitter([1,2,3,4])


 def string_reverse(word)

    print word.reverse!
    
    end

    string_reverse("hello")