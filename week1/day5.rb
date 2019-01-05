fromages = [
    'swiss cheese', 
    'cheddar', 
    'blue cheese', 
    'brie',
    'gouda',
    'spiced gouda'
]

index = 0
p fromages

while index < fromages.length 
    
    if fromages[index] == 'gouda'
        puts "Gouda, it's fine"
    end

    if fromages[index] == 'gouda'
        fromages[index] = 'gorgonzola'
        puts "But Gorgonzola is better :P"
    end

    # index = index + 1
    index += 1
end


cheeses = ['something', 'another thing']
index = 0

while index < fromages.length do
    cheeses[index] = fromages[index]
    # the cheeses array is assigned the value in the fromages array at the same index position
    if fromages[index] == 'gouda'
        cheeses[index] = 'gorgonzola'
    end
    index += 1
    # on each loop index is incremented by 1 
end


print cheeses





four_letter_animals = ['Calf', 'Duck', 'Elephant', 'Goat', 'Lamb', 'Lion', 'Mule', 'Dog']

four_letter_animals.push('Puma')

four_letter_animals.insert(4,'Joey')

four_letter_animals.delete_at(8)

four_letter_animals[2] = 'foal'

four_letter_animals.push('Bear')

p four_letter_animals.reverse



# Go through the array using .each and print out every animal
four_letter_animals.each do |print_animal|
    puts "The animal is #{print_animal}"
end

# Now print out every animal with its index number (but start at 1, as opposed to the 0 that it will have been assigned)
four_letter_animals.each do |print_animal, index|
    index = print_animal[0]
    puts "The animal is #{print_animal} and the index number is #{index}"
end






print "Hello, what groceries would you like? "
grocery_items = gets.strip

while grocery_items < 3
    print "What else would you like?"
end

print "Your items are #{grocery_items}"




cured_meats = []

cured_meats[0] = "salami"
cured_meats[1] = "sopressa"

index = 2

index += 1

cured_meats[index] = "cabana"

vegan_meats = ["tofurkey", "facon", "not dogs"]

cured_meats[1] = vegan_meats[0]








week_days = [
    'sunday',
    'monday',
    'tuesday',
    'wednesday',
    'thursday',
    'friday',
    'saturday'
]

p week_days.sort.reverse


# HASHES

thing = { title: 'Jones', price: 900, authors: ['John', 'Sally']}

key = :price

thing[key]
# data type is hash

thing[:authors]
# data type is array

thing[:authors][0]
# data type is string


