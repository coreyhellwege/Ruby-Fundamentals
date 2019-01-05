
coreys_computer = {colour: 'Space Grey',
                   price: 2699,
                   features: [
                              'Touch Bar', 
                              'True Tone Display'
                            ],
                    year: {year: 2018}
                }

puts coreys_computer[:colour]
puts coreys_computer[:features][0]

coreys_computer[:features][2]=['13 inch']
puts coreys_computer[:features]
puts coreys_computer.delete(:colour)





person = {  name: 'John', 
            height: '2m', 
            weight: '70kgs',
            occupation: 'web developer',
            hobbies: 'art'
         }

         person.delete(:weight)

         puts person       
         puts person[:height]








