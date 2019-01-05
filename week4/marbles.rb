# You have a bunch of red and blue marbles. To start the game you grab a handful of marbles of each color and put them into the bag, keeping track of how many of each color go in. You take turns reaching into the bag, guessing a color, and then pulling one marble out. You get a point if you guessed correctly. The trick is you only have three seconds to make your guess, so you have to think quickly.

# You've decided to write a function, guess_blue() to help automatically calculate whether you should guess "blue" or "red". The function should take four arguments:

# the number of blue marbles you put in the bag to start
# the number of red marbles you put in the bag to start
# the number of blue marbles pulled out so far, and
# the number of red marbles pulled out so far.

# guess_blue() should return the probability of drawing a blue marble, expressed as a float. For example, guess_blue(5, 5, 2, 3) should return 0.6.


def guess_blue(blue_start, red_start, blue_pulled, red_pulled)
    answer = (blue_start / red_start) * (blue_pulled / red_pulled)
    p answer.to_f
end
  
guess_blue(10, 12, 4, 5)  
guess_blue(12, 18, 4, 6)

# # Probability exercise:
# def random_color(colors_with_weights)
#   probabilities = {}
#   count = 0
#   colors_with_weights.each do |color_weight|
#     probabilities[count..count+color_weight[1]] = color_weight[0]
#     count = count + color_weight[1]
#   end
#   random_number = rand(count)
#   random_range = probabilities.keys.find { |k| k.include?(random_number) }
#   probabilities[random_range]
# end

# colors_with_weights = [['red', 10], ['blue', 20], ['green', 50]]
# puts random_color(colors_with_weights)