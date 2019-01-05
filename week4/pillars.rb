# There are pillars near the road. The distance between the pillars is the same and the width of the pillars is the same. Your function accepts three arguments:

# number of pillars (≥ 1);
# distance between pillars (10 - 30 meters);
# width of the pillar (10 - 50 centimeters).

# Calculate the distance between the first and the last pillar in centimeters (without the width of the first and last pillar).

# My Answer:



def pillars(num_of_pillars, distance, width)
    total_distance = ( distance * 100 / 1 ) - ( width * ( num_of_pillars - 2 ) ) 
    p total_distance
end

pillars(2, 20, 25)

# Test.assert_equals(pillars(1, 10, 10) , 0)
# Test.assert_equals(pillars(2, 20, 25) , 2000)
# Test.assert_equals(pillars(11, 15, 30) , 15270)

