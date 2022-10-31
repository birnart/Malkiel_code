require 'json'
require 'open-uri'
# scrape all securities available
url = "https://raw.githubusercontent.com/RayBB/random-stock-picker/master/stocks.json"
tickers = open(url).read
tickers_p = JSON.parse(tickers).shuffle
# input
puts "how many groups are you working in? (integer input only)"
gr_num = gets.chomp.to_i
puts "how many option do you want per group? (integer input only)"
pk_num = gets.chomp.to_i
# random selection
i = 1
gr_num.times do
  selec = []
  pk_num.times do
    pick = tickers_p.sample
    selec << pick
    tickers_p.delete_at(tickers_p.find_index(pick))
  end
  # output
  puts ""
  puts "For group #{i} the securities to analyse are:"
  puts selec
  i += 1
end
