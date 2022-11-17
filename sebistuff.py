from urllib.request import urlopen
import random
import codecs



link = "https://raw.githubusercontent.com/RayBB/random-stock-picker/master/stocks.json"
x = urlopen(link)
stock_bytes = x.read()
stock_decoded = codecs.decode(stock_bytes, 'UTF-8')
stock_list = stock_decoded.split(",")

stockerinos = []
def stock_picks():
  for i in range(0,20):
    randnum = random.randint(0,len(stock_list))
    stock = stock_list[randnum]
    stockerinos.append(stock)
    stock_list.remove(stock)
  return stockerinos


def dict_stocks():
  stocklys = stock_picks()
  for i in range(1,5):
    print("For Group", i,":", stocklys)
  return

dict_stocks()

