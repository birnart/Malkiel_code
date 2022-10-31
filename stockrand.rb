require 'json'
require 'open-uri'

focus_groups = [a = [], b = [], c = [], d = []]
num = "something"
# scrape all securities available
url = "https://raw.githubusercontent.com/RayBB/random-stock-picker/master/stocks.json"
tickers = open(url).read
tickers_p = JSON.parse(tickers)


puts "how many option do you want per group? (integer input only)"
num = gets.chomp.to_i


# random selection
focus_groups.each do |group|
  num.times do
    pick = tickers_p.sample
    group << pick
    pick_ind = tickers_p.find_index(pick)
    tickers_p.delete_at(pick_ind)
  end
end
# output
i = 1
while i < 5 do
  puts "For group #{i} the stock pics to analyse are:"
  puts focus_groups.pop
  puts ""
  i += 1
end
