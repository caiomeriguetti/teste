#coding=utf-8
import requests
from bs4 import BeautifulSoup
from common import connection, dict_gen, safe_str, safe_unicode, Reader, Miner
import time, datetime, smtplib
from urlparse import urlparse, parse_qs

class CustomMiner(Miner):
    
    def get_itens(self, url):
        
        resp = requests.get(url)
        
        s = BeautifulSoup(resp.text)
        itens = s.findAll("div", {"class": "hproduct"})

        mined = []
        for item in itens:
            url = item.find("a", {"class": "link"})["title"]
            mined.append(url)
            
        return mined

class CustomReader(Reader):
    
    def get_title(self, soup):
        tit = soup.find("div",{"class": "produtoNome"})
        title = tit.find("b").text.encode("utf8", errors="ignore")
        
        return title
    
    def get_price(self, soup):
        price = soup.find("i",{"class": "price"})
        price = price.text.replace(".","")
        price = float(price.replace(",", "."))
        return price
