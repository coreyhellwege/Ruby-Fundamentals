#  Challenge: Implement a function that takes two numbers and an operator, 
#  and that uses your methods to perform the relevant operation. 
#  e.g. write a general method that uses one of your methods from 
#  above as an operator, as well as passing in two numbers.




# Defining the equation methods:
def addition(num1, num2)
    return num1 + num2
end

def subtraction(num1, num2)
    return num1 - num2
end

def multiplication(num1, num2)
    return num1 * num2
end

def division(num1, num2)
    return num1 / num2
end


# Defining the method which will then access one of the equation methods
def operation(num1, num2, operator)
    if operator == "+"
        addition(num1, num2)
    elsif operator == "-"
        subtraction(num1, num2)
    elsif operator == "*"
        multiplication(num1, num2)
    elsif operator == "/"
        division(num1, num2)
    else 
        puts "This isn't a mathematical equation"
    end
end

# Runs just the multiplication method
puts multiplication(4,4)

# Runs the operation method AND the addition method
puts operation(1,5,"+")

# Runs the operation method AND the multiplication method
puts operation(8,6,"*")

# Returns the else statement
puts operation(4,3, "$")







#    1. Write function that translates a text to Pig Latin and back. 
#    English is translated to Pig Latin by taking the first letter of every word, 
#    moving it to the end of the word and adding ‘ay’. 
#    “The quick brown fox” becomes “Hetay uickqay rownbay oxfay”.

def pig_latin_translator(phrase) # defining a method 'pig_latin_translator' and passing in it's parameter '(phrase)'
    array_of_words = phrase.split(" ") # splitting the phrase into individual words and assigning it to a variable 'array_of_words'
    x = array_of_words.map do |word| # creating a variable which stores 'array_of_words' and then performs the do statement
        first_letter = word[0] # stores the first letter of each word to the variable 'first_letter'
        result = word[1..-1] + first_letter + "ay" # cutting out the first and last letter of each word and adding back the first letter
        # to the end and then adding "ay" to the end.
    end
    result = x.join(" ") # assigning 'x' to a variable 'result' and joining the words together with a space " "
    return result # returning the result variable
end

p pig_latin_translator("Big Brown Fox")






#Take sentance
sentance = "the quick brown fox"
#Split sentance to array of words
arr = [] #empty array to reference in the do loop.
words = sentance.downcase.split(" ") #this makes the 'words' variable into an array of words, .split from sentance at the space (" ")
words.delete(" ") #this deletes the space so the array is neat, [['the'], ['quick']
words.each do |word| #do each and cycle through each aeeay
    word = word.split("") #this is my array of words ['t', 'h', 'e'] split from the arrays in words ['the']
    letter = word.slice!(0) #this removes the first letter at index point0, being the first letter stores it in 'letter' the ! mutates 'word' instead of a new array.
    together = word.push(letter) #this makes the 'together' variable equal to 'word' but pushes the first letter we removed and stored in 'letter'
        if together.first == ["a", "e", "i", "o", "u"] #this is the rule for starting with a vowel in piglatin.
            together.push("way") #this pushes -"way" onto the end of of the word, because the original word doesnt change in the rules of piglatin
        else #this states that if it doesnt start with a vowel run vvvvvv
            pig_latin = together.push("ay") # this stores what we have in 'together' which at this stage is 'word' but first letter at the end (eg 'het') with 'ay' pushed on the end. hetay
        end
        arr.push together.join # this makes 'arr' then pushes ('together' and joins them together in one string at the end in order from the .each loop) 
    end
    arr = arr.join(' ')  # this then makes arr equal to arr but joining all the elements into the array, then we have to seperate them with a space.
    p arr




# 2.Implement a function that takes an operation involving three 
# numbers and two operators. Have the function return the correct 
# answer including the order of operation.

