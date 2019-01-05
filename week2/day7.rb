apples = [
    'fuji', 
    'royal gala', 
    'granny smith', 
    'pink lady'
    ]

def mince_apples(_apples)
    puts "mincing apples"
    _apples.each do |apple|
        puts "mince the #{apple}"
    end
    minced_apples = "the minced apples"
    return minced_apples
end

puts mince_apples(apples).upcase





# Gems 

require 'forecast_io'

ForecastIO.api_key = ENV.fetch('DARK_SKY_API_KEY')
puts ENV['DARK_SKY_API_KEY']

longitude = -37.815712
latitude = 144.955546 
options = { 
    params: { units: 'si'}
    }
forecast = ForecastIO.forecast(longitude, latitude, options)

puts forecast.latitude
puts forecast.longitude
puts forecast.timezone
puts forecast[:currently][:humidity]
