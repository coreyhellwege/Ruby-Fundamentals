# If you have yield inside a method, you must include a do block when you call that method.
# The method which contains the yield is an empty method essentially. 

# class Array

#     def my_each
#         counter = 0
#         while counter < self.length
#             yield(self[counter])
#             counter += 1
#         end
#     end

# end

# [1,2,3].each do |item|
#     puts "#{item}"
# end

# my_each([4,5,6])










class Person 
    def initialize(name) 
         @name = name
    end

    def do_with_name 
        yield( @name ) 
    end
end

# This would allow us to call that method and pass an arbitrary code block.
# For instance, to print the name we would do:

person = Person.new("Oscar")

#invoking the method passing a block
person.do_with_name do |name|
    puts "Hey, his name is #{name}"
end
















# class Array

#     def my_each
#         counter = 0
#         while counter < self.length
#             yield(self[counter])
#             counter += 1
#         end
#     end

# end

# [1,2,3].my_each do |item|
#     puts "#{item}"
# end

# # my_each([4,5,6])



def print_list(array, counter)
    counter = counter
    array.each do |item|
      puts "#{yield(counter)} #{item}"
      counter = counter.next
    end
end


print_list(["Ruby", "Python", "Java"], 1) do |counter|
    print "<#{counter}>"
end

print_list(["Ruby", "Python", "Java"], "A") do |counter|
    print "#{counter}."
end




arr = [1,7, 19, 20, 4, 12, 17]

def array_splitter(arr)
    true_arr = []
    false_arr = []
    arr.each do |element|
        if yield(element)
            true_arr << element
        else
            false_arr << element
        end
    end
    return [true_arr, false_arr]
end


array_splitter(arr) do |item|
    item % 5 == 0
end

array_splitter(arr) do |item|
    item % 3 == 0
end

array_splitter(arr) do |item|
    item % 2 == 0
end




# BE CAREFUL HERE: This method will return nil because puts is a method which just outputs the value to the screen only
def add(n1, n2)
    puts(n1 + n2)
end

res = add(3,4)

