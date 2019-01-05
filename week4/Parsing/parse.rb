# make an array of hashes where the heading is the key and the value is the particular data

football_teams = File.read('football_teams.csv')

# puts football_teams

# football_teams.each_line do |line|
#     fields = line.split(',')
#     puts fields
# end

data_split = football_teams.split("\n")
# p data_split

headers = data_split[0]
# p headers

headers_array = headers.split(',')
# p headers_array
data_split.delete_at(0)

team_sets = data_split.map do |team|
    team.split(",")
end 

# p team_sets
hash_array = []

team_sets.each do |value|    
    hash_array << {
    headers_array[0].to_sym => value[0], 
    headers_array[1].to_sym => value[1],
    headers_array[2].to_sym => value[2],
    headers_array[3].to_sym => value[3]
    }
end

puts hash_array





# collingwood = team_sets[0]
# p collingwood


# data = [
#     {
#         id: 1,
#         team: "Collingwood",
#         city: "Melbourne",
#         premierships: 15
#     },
#     {
#         id: 2,
#         team: "West Coast",
#         city: "Perth",
#         premierships: 4
#     }
# ]
