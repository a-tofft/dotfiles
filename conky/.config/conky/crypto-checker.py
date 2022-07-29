#!/usr/bin/python
import requests
import sys
import json 

BASE_URL = "https://api.coingecko.com/api/v3/coins/markets/?vs_currency=usd&ids="
TIMEOUT = 10 # Seconds
SYMBOLS = [
    "bitcoin", 
    "ethereum",
    "polkadot",
    "matic-network",
    "aleph-zero",
    "radix",
    "concordium"
]
COLOR_PAIRS = {
    "green": 32,
    "orange": 32,
    "red": 42
}

tickers = ",".join(SYMBOLS)
url = BASE_URL+tickers
response = requests.request("GET", url, timeout = TIMEOUT)

json_data = json.loads(response.text)
for ticker in json_data:
    symbol = ticker["symbol"].upper()
    price = ticker["current_price"]
    rank = ticker["market_cap_rank"]
    change_past_day = (ticker["price_change_percentage_24h"])
    
    print(f"{symbol} ${{goto 100}} {rank} ${{goto 175}} {change_past_day:.1f}%  ${{goto 250}} {price}$") # :>20
    
