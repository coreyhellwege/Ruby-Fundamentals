# Bob is preparing to pass an IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that at least one number usually differs from the others in evenness. Help Bob to check his answers, he needs a program that among the given numbers finds those that are different in evenness, and returns the index position of those numbers. 

# E.G: 
# iq_test([2, 4, 7, 8, 10]) => should return 2
# iq_test([3, 9, 13, 17, 22, 7, 31, 14, 44, 61]) => should return [4, 7, 8]

# My Answer:


# STEPS:
# 1. Separate odd and even numbers into different arrays 

def iq_test(numbers)
    even_numbers = []
    odd_numbers = []

    numbers.each do |num|
        if num.even? == true
            even_numbers << num
        else 
            odd_numbers << num
        end
    end
    # p even_numbers
    # p odd_numbers

    # 2. Count the number of items in each array. If odd < even, select the odd numbers from the numbers array and vice versa.

    result = []

    if odd_numbers.count < even_numbers.count
        # Do the select block based on the result of the if condition 
        result = numbers.select { |item| item.even? == false }
    else 
        result = numbers.select { |item| item.even? == true }
    end

    # p result

    outlier_index = []

    # 3. We now have a result of the outlier numbers. Interate through the original numbers, if the result array includes the value we are iterating through push the index of that value into a final array and return the final array.

    numbers.each_with_index do |number, index|
        if result.include?(number)
            outlier_index << index
        end 
    end 
    p outlier_index
end


# numbers = [2, 4, 7, 8, 10, 13, 12, 18, 24]
# numbers = [2, 4, 7, 8, 10, 13, 12, 18, 24]
numbers = [3, 9, 13, 17, 22, 7, 31, 14, 44, 61]
iq_test(numbers)
