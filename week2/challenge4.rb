# We’re going back to our previous challenges, but this time instead of asking for user input, write a method for the following:

# 1. Calculate the area of a square.
def area_of_square(side_length)
    return side_length * 4
end

result = area_of_square(4)
p result

# Calculate the area of a Triangle
def area_of_triangle(base_length, side_length)
    return base_length * side_length
end

result = area_of_triangle(4,6)
p result

# Calculate the area of a Rectangle
def area_of_rectangle(length, width)
    return length * width
end

result = area_of_rectangle(3,6)
p result

# Calculate the area of a Circle.
def area_of_circle(radius)
    return radius * Math::PI
end

result = area_of_circle(8)
p result

# Calculate the volume of a Cube
def volume_of_cube(edge)
    return edge **3
end

result = volume_of_cube(5)
p result

# Calculate the volume of a Sphere
def volume_of_sphere(radius)
    return (4/3 * Math::PI) * radius
end

result = volume_of_sphere(3)
p result

# Create a temperature converter that converts the temperature from celsius to fahrenheit
def temperature_converter(temp_in_celcius)
    return temp_in_celcius * 9.0/5 + 32
end

result = temperature_converter(22)
p result
