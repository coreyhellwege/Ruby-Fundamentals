print "do you think it's too cold to go outside?"

outside_temperature = gets.strip

print "is it raining outisde?"

is_it_raining_outside = gets.strip

if outside_temperature == "yes" 
    puts "Better stay inside then"
else 
    puts "You can go outside!"
end



puts "how many 10 cent coins do you have?"
ten_cent_coins = gets.strip.to_i * 10

puts "how many 20 cent coins do you have?"
twenty_cent_coins = gets.strip.to_i * 20

puts "how many 50 cent coins do you have?"
fifty_cent_coins = gets.strip.to_i * 50

puts "how many 1 dollar coins do you have?"
one_dollar_coins = gets.strip.to_i * 100

total_money = ten_cent_coins + twenty_cent_coins + fifty_cent_coins + one_dollar_coins
print "The total amount of money you have is #{total_money}"

if total_money >= 550 
    puts "The most expensive item you can buy is a sandwich"
elsif total_money <= 110
    puts "The most expensive item you can buy is a soft drink"
elsif total_money <= 45
    puts "The most expensive item you can buy is a bag of lollies"
end

party_parrot_cocktails = 0
party_parrot_waters = 0
party_parrot_beers = 0

order_counter = 0

while order_counter <= 3
    # order_counter = order_counter + 1
    print "Hello, what drink would you like? "
    customer_order = gets.strip

    if customer_order == "party parrot cocktail" 
        party_parrot_cocktails += 1
    elsif customer_order == "party parrot water" 
        party_parrot_waters += 1
    elsif customer_order == "party parrot beer" 
        party_parrot_beers += 1

    case customer_order
    when "beer"
        party_parrot_beers += 1
    when "cocktail"
        party_parrot_cocktails += 1
    when "water"
        party_parrot_waters += 1
    else
        puts "That's not a valid drink"
    end
    order_counter = party_parrot_beers + party_parrot_cocktails + party_parrot_waters
end

puts "You are over the limit"

puts "You have to make #{party_parrot_cocktails} party parrot cocktails"
puts "You have to make #{party_parrot_waters} party parrot waters"
puts "You have to make #{party_parrot_beers} party parrot beers"

cocktail_profit = 14.0 * party_parrot_cocktails
water_profit = 5.45 * party_parrot_waters
beer_profit = 9.00 * party_parrot_beers

total_profit = cocktail_profit + water_profit + beer_profit
"Your total profit is #{total_profit}"



phone_box = (5 * 8) * 4

package_box = (32 * 40) * 20

number_of_units = package_box / phone_box

puts "The volume of the phone box is #{phone_box}"

puts "You can fit #{number_of_units} in the package box"

# keep in mind dimensions when calculating volume