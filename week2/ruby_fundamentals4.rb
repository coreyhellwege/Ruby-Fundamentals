# Goal: Starting with shopping_centre, get back the string '29%'
# Answer: shopping_centre[:chinese_restaurant][:details].menu[0][:ingredients][2][:nutrients][1][:daily_percentage]
require 'pry'

# squash = {
#     name: 'squash',
#     length: 15,
#     nutrients: [
#         {
#             vitamin: 'A',
#             daily_percentage: '4%',
#         },
#         {
#             vitamin: 'C',
#             daily_percentage: '29%'
#         }
#     ]
# }

# beef = {}
# noodles = {}

# class Restaurant
#     attr_accessor :name, :menu
#     def initialize(name)
#         @name = name
#         @menu = []
#     end
#     def add_dish_to_menu(dish)
#         @menu << dish
#     end
# end

# stir_fry = {
#     price: 13.50,
#     ingredients: [
#         beef,
#         noodles,   
#         squash
#     ]
# }    

# mr_wok = Restaurant.new('Mr Wok')
# mr_wok.add_dish_to_menu(stir_fry)

# shopping_centre = {
#     address: '5 Somewhere Ln, Blahville',
#     chinese_restaurant: {
#         address: 'Lot 4',
#         details: mr_wok
#     }
# }

# binding.pry








# require 'pry'

# 1. Starting with fruit, extract the string 'lemon' and give its data type
fruit = ['apple', 'orange', 'lemon']
puts fruit[2].class

# 2. Starting with phone, extract 'iPhone', and the weight, and give the datatype of each
phone = {
    brand: 'iPhone',
    price: 90000,
    weight: 362
}
puts phone[:brand].class
puts phone[:weight].class

# 3. Extract the string 'West Melbourne' starting with restaurant
restaurant = {
    name: 'Biryani House',
    address: {
        street: 'King St',
        suburb: 'West Melbourne'
    }
}
puts restaurant[:address][:suburb]

# 4. Starting with fruit_and_veg, extract 'peach'
fruit_and_veg = [
    ['avocado', 'apple'],
    ['grape', 'guava'],
    ['pear', 'pumpkin', 'peach']
]
puts fruit_and_veg[2][2]

# 5. Starting with students, produce the number 29, and the string 'Petra'
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

puts students[1][:age]

# 6. Starting with teachers, produce 'Lead', 'military jiujitsu' and 'cooking'
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
        'opera singing',
        'cooking'
    ]
}

teachers = [ruegen, harrison, gretchen]

puts teachers[0][:role]
puts teachers[2][:hobbies][0]
puts teachers[0][:hobbies][1]


# 7. Starting at sport, retrieve a) the string 'doubles', b) the number 20, c) two ways of finding the number 1991, and d) an example of how you would find the number of Wimbledon titles that Monica Seles won from the following structure. (I kept the years as numbers because you might use them to find the number of years between the first and last slams, but they could be represented as strings too.)
mcenroe = {
    name: 'John McEnroe',
    total_majors: 7,
    slam_breakdown: {
        aus_open: [],
        roland_garros: [],
        wimbledon: [1981, 1983, 1984],
        us_open: [1979, 1980, 1981, 1984]
    }
}

federer = {
    name: 'Roger Federer',
    total_majors: 20,
    slam_breakdown: {
        aus_open: [2004, 2006, 2007, 2010, 2017, 2018],
        roland_garros: [2009],
        wimbledon: [2003, 2004, 2005, 2006, 2007, 2009, 2012, 2017],
        us_open: [2004, 2005, 2006, 2007, 2008]
    }
}

sport = {
    name: 'Tennis',
    number_of_players: [
        {
            type: 'singles',
            players: 2
        },
        {
            type: 'doubles',
            players: 4
        }
    ],
    key_players: [
        {
            type: 'female',
            players: [
                {
                    name: 'Steffi Graf',
                    total_majors: 22,
                    slam_breakdown: {
                        aus_open: [1988, 1989, 1990, 1994],
                        roland_garros: [1987, 1988, 1993, 1995, 1996, 1999],
                        wimbledon: [1988, 1989, 1991, 1992, 1993, 1995, 1996],
                        us_open: [1988, 1989, 1993, 1995, 1996]
                    }
                },
                {
                    name: 'Monica Seles',
                    total_majors: 9,
                    slam_breakdown: {
                        aus_open: [1991, 1992, 1993, 1996],
                        roland_garros: [1990, 1991, 1992],
                        wimbledon: [],
                        us_open: [1991, 1992]
                    }
                }
            ]
        },
        {
            type: 'male',
            players: [
                mcenroe,
                federer
            ]
        }
    ]
}

puts sport[:number_of_players][1][:type]

# binding.pry