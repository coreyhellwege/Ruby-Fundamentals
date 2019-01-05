# PROBLEM 18

# Write a method that takes two arguments, an array and a string. If the string is not in the array it returns nil, and if it does contain the string, it returns the index of the string within the array. You will use this in the following question.

def array_checker(array, string)
    array.each do |array|
            if array == string 
                return string
            else return nil
        end
    end
end

array_checker(["hello", "world"], "hello")

# *Problem 19*
# Using some part of the HK MTR, write a method that takes one argument, a hash within which there are three keys: two which are strings (an origin station, and a destination station), and one which is an array. Choose part of a line from the MTR (or other rail network) as dummy data for the array. 

# The method should return a hash that contains two keys: an origin index, and a destination index. 
# These keys should be given the value of the index of the string the array if those stations are in the station array, or nil if not.



def method_name(hash)

    hash.each do |key, value|
        key1 = hash[:origin_station]
        key2 = hash[:destination_station]
        value = hash[:third_key]
        p value.index(key1) 
        p value.index(key2) 
        # puts "The hash key is #{key} and the value is #{value}"
    end
        # hash[:third_key].include?([:origin_station])
        # hash[:third_key].index(origin_station:[0])
        # hash[:origin_station]
end



hash = {
    origin_station: "South Yarra",
    destination_station: "Windsor",
    third_key: ["Sandringham", "Hampton", "Brighton Beach", "Middle Brighton", "North Brighton", "Gardenvale", "Elsternwick", "Ripponlea", "Balaclava", "Windsor", "Prahran", "South Yarra", "Richmond, Flinders Street"]
}

method_name(hash)




# *Problem 20*
# Using some of the features in the past couple of problems, start thinking about it coding a basic PTV app (like our public transport app, if you aren't familiar). I'm happy to give hints, or you can get together and help each other. You need to simplify things, so only dummy up one or at most two lines at first (or at last). The final product (coded, or just pseudo-coded) would take a user input of an origin station, and a destination station. Start with one train line, represented by an array. If you extend it to two lines, you need to think about how to represent the lines as data, and this might be a complex object. Think through all the options. You will need some way to carry the user data through the method/s, and some way to represent the MTR. You will likely need several small methods, and will likely have to employ a full range of data types, such as hashes and arrays (and possibly arrays of arrays). I am more than happy to help out anyone stuck, particularly if they have a specific question where they are stuck, and have thought about it. I'm also happy to look through code people would like examined.