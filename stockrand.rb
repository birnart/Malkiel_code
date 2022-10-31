require 'json'
require 'open-uri'

# def variables
stock_picks_a = []
stock_picks_b = []
stock_picks_c = []
stock_picks_d = []
focus_groups = [stock_picks_a, stock_picks_b, stock_picks_c, stock_picks_d]

# scrape all securities available
url = "https://raw.githubusercontent.com/RayBB/random-stock-picker/master/stocks.json"
tickers = open(url).read
tickers_p = JSON.parse(tickers)

# random selection
focus_groups.each do |group|
  20.times do
    pick = tickers_p.sample
    group << pick
    pick_ind = tickers_p.find_index(pick)
    tickers_p.delete_at(pick_ind)
  end
end
i = 1
while i < 5 do
  puts "For group #{i} the stock pics to analyse are:"
  puts focus_groups.pop
  i += 1
end
