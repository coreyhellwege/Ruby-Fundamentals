travel_time = 45
travel_method = "train"

print "Today I took the #{travel_method} to the city and it took me #{travel_time} minutes"



exlusive_club_member = ''

print "please enter member name: "
exlusive_club_member = gets.chomp.downcase

if exlusive_club_member == "ross"
    puts "allow #{exlusive_club_member.capitalize} through"
end



person = nil
person.nil?
# true

person = ""
person.nil?
# false



print "What is your house pet?"
something = gets.strip.downcase

case something
when "cat"
    puts "meow"
when "dog"
    puts "woof"
when "bird"
    puts "tweet"
else
    puts "i'm a robot"




counter = 0

while counter < 5
    counter = (counter + 1)
    print "#{counter} enter your name: "
    first_name = gets
    puts "your name is #{first_name}"
    puts "I will ask you again.."
end


    