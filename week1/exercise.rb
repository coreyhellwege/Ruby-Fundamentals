

print "What is the square length?"
square_length = gets.strip.to_i

print "What is the square width?"
square_width = gets.strip.to_i

square_result = square_length * square_width
puts square_result



print "what is the rectangle length?"
rectangle_length = gets.strip.to_i

print "What is the rectangle width?"
rectangle_width = gets.strip.to_i

rectangle_result = rectangle_length * rectangle_width
puts rectangle_result



print "what is the length of the triangles side?"
triangle_length = gets.strip.to_i

triangle_result = triangle_length * 3
puts rectangle_result



print "what is the radius of the circle?"
circle_radius = gets.strip.to_f

circle_result = Math::PI * (circle_radius**2)
puts circle_result


print "What is the volume of the cube?"
cube_area = gets.strip.to_i

cube_result = cube_area**3
puts cube_result


print "What is the temperature in celcius?"
temperature_celcius = gets.strip.to_f

temperature_farenheit = (temperature_celcius * 1.8) + 32
puts "Cool, the temperature in farenheit is: #{temperature_farenheit.to_s.colorize}"

require 'colorize'
puts "This is blue".colorize(:blue)  













