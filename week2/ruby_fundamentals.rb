
# Problem 1

# Define a method that takes a string (as an argument), and then returns the string + “ will be”
def first_method(string)
    return string + " " + "will be"
end

# Define a method that takes a string and returns the string + “ won’t be”
def second_method(string)
    return string + " " + "won't be"
end

# Define a method that takes a string and returns the string + “ impeached.”
def third_method(string)
    return string + " " + "impeached."
end

=begin 
Define a method called trump_predictor. trump_predictor takes a string, but then you must 
use the previous functions to get from this method call trump_predictor(“Trump”) to whatever outcome 
you think is more likely, but using only the previously defined functions. Store the output of 
trump_predictor in a well named variable. (For example, if you think he won’t be impeached, only 
call the methods that matter, so the output string will be “Trump won’t be impeached.”.) 
=end
def trump_predictor(string) 
    will_be = first_method(string)
    impeached = third_method(will_be)
    return impeached
end 

puts trump_predictor("Trump")









# Problem 2

# Define a method that takes a number of feet, and returns a number representing the total inches
def feet_to_inches(feet)
    return total_inches = feet * 12
end

# puts feet_to_inches(3)

# And another that takes a number representing inches and returns the number of centimetres
def inches_to_centimeters(inches)
    return total_centimeters = inches * 2.54
end

# puts inches_to_centimeters(5)

=begin
and call a third function called feet_to_cm that takes a number of feet and returns the number of 
centimetres, but that uses only our previous two functions. Store that number in a well-named variable.
=end
def feet_to_cm(feet)
    total_inches = feet_to_inches(feet) 
    centimeters = inches_to_centimeters(total_inches) 
    return centimeters
end

puts feet_to_cm(8)






# PROBLEM 3:

# Define an array with three numbers in it. Then write a method that takes two arguments. 
# The first argument will be an array. The second will be a number. I want this method to 
# return the array that would result if each element in the array was multiplied by the 
# second argument. Return the result. Call this function with your array and an argument 
# of your choice, and store the result in a well-named variable.

def multiplier(array, number)
    new_array = []
    array.each do |item|
        result = item * number
        new_array << result
        # new_array.push(result)
    end
    return new_array
end

p multiplier([1,2,3], 4)

# overall_result = some_method(some_array)








# PROBLEM 5:

# Define a method five_times which takes a number as an argument and returns the value that results 
# when the argument is multiplied by 5.

def five_times(number)
    number * 5
end

p five_times(4)

# Define a method hund_times, which takes and argument and returns 
# the result of that argument being multiplied by 100.

def hund_times(number)
    number * 100
end

p hund_times(6)

# Define a method div_seven which takes an argument 
# and returns the result of that argument divided by 7.

def div_seven(number)
    number / 7
end

p div_seven(49)

# Define a method number_mangle which takes one 
# argument and which uses only those previously defined functions to multiply that argument by 5, 100, 
# and then divide by 7 - that is, number_mangle will contain no direct calculations. 
# Store that result in a variable.

def number_mangle(number)
    five_times(number) + hund_times(number) + div_seven(number)
end

puts result = number_mangle(4)










# PROBLEM 6:

# Define the method ten_mult, which takes one argument (a number), and returns the result of that number 
# multiplied by 10.

def ten_mult(number)
    return number * 10
end

p ten_mult(8)

# Define a method called arr_mult that takes an array as an argument. In arr_mult, use 
# the method ten_mult on each element of the array that was passed in as the argument. Return the array 
# that results from this (each element multiplied by 10), and store in a well-named variable.

def arr_mult(array)
    result = array.map do |array| 
        ten_mult(array)
    end
    p result
end

arr_mult([5, 6, 7])




# PROBLEM 7:

# Define a well-named method that takes one argument and returns ‘true’ if that argument is even, and false 
# if the argument is an odd number. 

def even_number_calc(number)
    return number.even?
end

p even_number_calc(6)

# Define a method ‘div_or_mult_two’ which takes a number as an argument. 
# Using your first defined method, if the number is even this method returns the result of that number 
# divided by 2. If the number is odd it returns the result of that number multiplied by 2. Store the 
# result of a call to this method in a variable.

def div_or_mult_two(number)
    if number.even?
        number / 2
    elsif number.odd?
        number * 2
    end
end

p result = div_or_mult_two(8)
p result = div_or_mult_two(5)





# PROBLEM 8

# Define a method that takes an array of numbers, and returns the total of the addition of all the numbers 
# in the array. Store the result of a call to this method in a well-named variable.

def array_calc(array)
    return array.sum
end

p total_array = array_calc([3, 6, 20])





# PROBLEM 9

# Write a method called exponent_plus that takes two arguments, and both will be numbers. 
# It will return the total of the first number to the power of 2, added to the second number. 

# Write another method, arr_exp, that takes three arguments. The first arguments expect numbers, 
# and the last argument will be an array of numbers. 

# This method will return an array that is the 
# result of each element of the array multiplied by the result of exponent_plus when called with 
# the other two arguments to arr_exp. At least once, store the result of a call to arr_exp in a 
# well-named variable.

def exponent_plus(number1, number2)
    (number1 **2) + number2
end

p exponent_plus(3,1)

def arr_exp(number1, number2, array)
    array.map do |each_item|
        each_item * exponent_plus(number1, number2)
    end
end

p arr_exp(3, 1, [2,2,5])








