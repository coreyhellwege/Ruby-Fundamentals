# ACCESSING VALUES:

# 1. Extract the string 'lemon' and give its data type
fruit = ['apple', 'orange', 'lemon']

# My answer:
puts fruit[2]
puts fruit[2].class

# 2. Extract the brand ('iPhone'), and the weight, and give the datatype
phone = {
    brand: 'iPhone',
    price: 90000,
    weight: 362
}

# My answer:
p phone[:brand]
p phone[:brand].class

# 3. Extract the string 'West Melbourne' starting with restaurant
restaurant = {
    name: 'Biryani House',
    address: {
        street: 'King St',
        suburb: 'West Melbourne'
    }
}

# My answer:
puts restaurant[:address][:suburb]


# 4. Starting with fruit_and_veg, extract 'peach'
fruit_and_veg = [
    ['avocado', 'apple'],
    ['grape', 'guava'],
    ['pear', 'pumpkin', 'peach']
]

# My answer:
puts fruit_and_veg[2][2]


# 5. Starting with students, produce the number 29
student1 = {
    name: 'Roger',
    age: 36
}

student2 = {
    name: 'Petra',
    age: 28
}

student3 = {
    name: 'Juan Martin',
    age: 29
}

students = [student1, student3]
students.push(student2)

# My answer:
puts students[1][:age]


# 6. Starting with teachers, produce 'military jiujitsu'
harrison = {
    role: 'TA',
    hobbies: [
        'running',
        'umpiring'
    ]
}

gretchen = {
    role: 'TA',
    hobbies: [
        'military jiujitsu',
        'reading'
    ]
}

ruegen = {
    role: 'Lead',
    hobbies: [
        'opera',
        'cooking'
    ]
}

teachers = [ruegen, harrison, gretchen]

# My answer:
puts teachers[2][:hobbies][0]
