# A group of friends have just finished lunch. Write an app to work out how much each person owes.
# Parameters:
# - Your app should ask “Enter a customer’s name”
# - Your first line of code is:
# items = [{ customer: “John”, item: “Soup”, cost: 8.50}, {customer: “Sarah”, item: “Pasta”, cost: 12}, {customer: “John”, item: “Coke”, cost: 2.50}]
# - Your app should output, for example: “John owes $11.0"
# Extra
# 1. Format your total so it always shows two decimal places, e.g. $11.00
# 2. The list of items makes our code messy. Instead, see if you can read the items from a file. (Google will help here!)
# 3. Allow items to be added to the list. E.g. “Press 1 to add items, press 2 to work out a total”.
# 4. Store these new items to the file.

puts "What is your name?"
customer_name = gets.strip

file.open[items.rb]

items = [
  {customer: "John", item: "Soup", cost: 8.52354}, 
  {customer: "Sarah", item: "Pasta", cost: 12}, 
  {customer: "Luke", item: "Coke", cost: 2.50}
]

if customer_name == "John"
  puts "#{customer_name} owes $#{items[0][:cost].round(2)}"
  else puts "That customer did not order anything"
end
