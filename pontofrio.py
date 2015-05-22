#coding=utf-8
import requests
from bs4 import BeautifulSoup
from common import connection, dict_gen, safe_str, safe_unicode, Reader
import time, datetime, smtplib

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
