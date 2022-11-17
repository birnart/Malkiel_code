from urllib.request import urlopen
import pandas as pd
import random
import codecs
import numpy

stockerinos = []


link = "https://raw.githubusercontent.com/RayBB/random-stock-picker/master/stocks.json"
x = urlopen(link)
stock_bytes = x.read()
stock_decoded = codecs.decode(stock_bytes, 'UTF-8')
stock_list = stock_decoded.split(",")


def stock_picks():
  for i in range(0,20):
    randnum = random.randint(0,len(stock_list))
    stock = stock_list[randnum]
    stockerinos.append(stock)
    stock_list.remove(stock)
  return stockerinos


def group_allocator():
  for j in range(0,4):
    selection_ = [stockerinos]
    return selection_#{i}

group_allocator()
