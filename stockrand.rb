require 'json'
require 'open-uri'

# def variables
stock_picks_a = []
stock_picks_b = []
stock_picks_c = []
stock_picks_d = []

# scrape all securities available
url = "https://raw.githubusercontent.com/RayBB/random-stock-picker/master/stocks.json"
tickers = open(url).read
tickers_p = JSON.parse(tickers)

# random selection
20.times do
  pick = tickers_p.sample
  stock_picks_a << pick
  pick_ind = tickers_p.find_index(pick)
  tickers_p.delete_at(pick_ind)
end
20.times do
  pick = tickers_p.sample
  stock_picks_b << pick
  pick_ind = tickers_p.find_index(pick)
  tickers_p.delete_at(pick_ind)
end
20.times do
  pick = tickers_p.sample
  stock_picks_c << pick
  pick_ind = tickers_p.find_index(pick)
  tickers_p.delete_at(pick_ind)
end
20.times do
  pick = tickers_p.sample
  stock_picks_d << pick
  pick_ind = tickers_p.find_index(pick)
  tickers_p.delete_at(pick_ind)
end

# final output
puts "For group a the stock pics to analyse are:"
puts stock_picks_a

puts ""

puts "For group b the stock pics to analyse are:"
puts stock_picks_b

puts ""

puts "For group c the stock pics to analyse are:"
puts stock_picks_c

puts ""

puts "For group d the stock pics to analyse are:"
puts stock_picks_d
