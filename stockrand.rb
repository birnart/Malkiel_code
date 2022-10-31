require 'json'
require 'open-uri'
# scrape all securities available => FIND A BETTER HASH TO DO META ANAYLSIS
# url = "https://raw.githubusercontent.com/RayBB/random-stock-picker/master/stocks.json"
# tickers = open(url).read
# tickers_p = JSON.parse(tickers).shuffle
all_tickers = JSON.parse(open("https://raw.githubusercontent.com/RayBB/random-stock-picker/master/stocks.json").read).shuffle
# input
puts "how many groups are you working in? (integer input only)"
group_num = gets.chomp.to_i
puts "how many option do you want per group? (integer input only)"
pick_num = gets.chomp.to_i
# random selection
i = 1
group_num.times do
  selection = []
  pick_num.times do
    pick = all_tickers.sample
    selection << pick
    all_tickers.delete_at(all_tickers.find_index(pick))
  end
  # output
  puts ""
  puts "For group #{i} the securities to analyse are:"
  puts selection
  i += 1
end
