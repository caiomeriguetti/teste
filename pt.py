#coding=utf-8
from threading import Thread
import requests
from bs4 import BeautifulSoup
import MySQLdb
import datetime
import time
import smtplib
from urlparse import urlparse
from common import connection, dict_gen, safe_str, delay, check_new_urls_delay
import americanas, pontofrio

readers = {"www.americanas.com.br": americanas.CustomReader,
           "www.pontofrio.com.br": pontofrio.CustomReader}

def syncTracks():
    tracking = []
    while True:
        
        db = connection()
        c = db.cursor()
        
        c.execute("select * from track")
        r = dict_gen(c)
        
        for track in r:
            
            if track["url"] not in tracking:
                
                parsed_uri = urlparse(track["url"])
                domain = '{uri.netloc}'.format(uri=parsed_uri)
                
                print "new url", track["url"], domain
                
                customreader = readers[domain]()
                customreader.url = track["url"]
                customreader.start()
                
                tracking.append(track["url"])
        
        c.close()
        db.close()
        
        time.sleep(check_new_urls_delay)

Thread(target=syncTracks).start()