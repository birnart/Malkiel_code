require 'json'
require 'open-uri'

# def variables
all_stocks = []
stock_pics = []

# scrape all securities available
url = "https://raw.githubusercontent.com/RayBB/random-stock-picker/master/stocks.json"
cts = open(url).read
cts_p = JSON.parse(cts)

# random selection
20.times do
  stock_pics << cts_p.sample
end

# final output
puts "From stock pics to analyse are:"
stock_pics.each do |i|
  puts i
end
puts "enjoy!"
