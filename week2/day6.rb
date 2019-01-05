
# Creating a method:

def print_main_menu
    puts """
MAIN MENU
=========
1. Snapper
2. Bass
3. Salmon
4. Shark
5. Tuna
6. Talapia
"""
end


def menu_choice
    choice = gets.chomp
    case choice
    when '1'
        puts 'you chose snapper'
    when '2'
        puts 'you chose bass'
    when '3'
        puts 'you chose salmon'
    when '4'
        puts 'you chose shark'
    when '5'
        puts 'you chose tuna'
    when '6'
        puts 'you chose talapia'
    else
        puts 'that isnt on the menu'
    end
end

puts print_main_menu()
puts menu_choice()


# Arguments
def square(num)
    # Return is only used inside a method. Return is also like a break, no arguments after return will be executed.
    # Return keyword does not have to be included. Ruby will return the last argument by default.
    return num * num
end

# This stores the result in a variable called result and then puts the result to the screen
result = square(5)
puts result




def print_main_menu()
    puts "###"
    result = num * num
    # yield means you can put any code here
    yield 
    puts "###"
end

print_main_menu() do
    print_video_games()
end

def print_video_games()
    puts """
    1. Street Fighter
    2. Mortal Combat
    3. Mario Cart
    4. Tetris
    """
end

def print_film_names()
    puts """
    1. Lion King
    2. Forest Gump
    3. Star Wars
    4. Titanic
    """
end




def main_menu(num)
    puts "####"
    result = num * num
    yield(result, "hello")
    puts "###"
end

main_menu(8) do |result, x|
    puts "ran with #{result} #{x}"
end




games = [
    'Street Fighter',
    'Mortal Kombat',
    'Mario Cart',
    'Tetris'
]

def main_menu(arr)
    index = 0
    array_length = arr.length
    puts "#####"
    while index < array_length
        game = arr[index] #get game at index
        yield(game, index)
        index += 1
    end
    puts "#####"
end

main_menu(games) do |video_game, i|
    puts "#{i+1} #{video_game}"
end





# string
greeting = "Hello, how are you"
# array
characters = greeting.split("")
# element
characters.each do |character|
    puts "the character is #{character}"
end

puts
 
characters.each do |character|
    puts "#{character}!!!"
end
