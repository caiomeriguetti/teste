#coding=utf-8
import requests
from bs4 import BeautifulSoup
from common import connection, dict_gen, safe_str, Reader, Miner
import time, datetime, smtplib
from urlparse import urlparse, parse_qs

class CustomMiner(Miner):
    
    def get_itens(self, url):
        
        resp = requests.get(url)
        
        s = BeautifulSoup(resp.text)
        itens = s.findAll("div", {"class": "productImg"})
        mined = []
        for item in itens:
            url = item.find("a", {"class": "url"})["href"]
            parsed_uri = urlparse(url)
            trueurl = parse_qs(parsed_uri.query)["link"][0]
            mined.append(theurl)
        
        return mined

class CustomReader(Reader):
    
    def get_title(self, soup):
        try:
           tit = soup.find("h1",{"class": "mp-tit-name"})
           title = tit["title"]
           return title
        except:
           title = ""
           return False
    
    def get_price(self, soup):

        try:
            price = soup.find("div",{"class": "mp-price"})
            price = price.findAll("span")[1].text.split(" ")[1].replace(".","")
            price = float(price.replace(",", "."))
            return price
        except:
            price = 0.0
            return False