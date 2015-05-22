#coding=utf-8
from threading import Thread
import requests
from bs4 import BeautifulSoup
import MySQLdb
import datetime
import time
import smtplib
from urlparse import urlparse
from common import connection, dict_gen, safe_str, sync_urls_delay, check_new_minig_requests_delay
import americanas, pontofrio

readers = {"www.americanas.com.br": americanas.CustomReader,
           "www.pontofrio.com.br": pontofrio.CustomReader}

miners = {"busca.americanas.com.br": americanas.CustomMiner}

def syncTracks():

    while True:
        
        db = connection()
        c = db.cursor()
        
        c.execute("select * from track order by id desc")
        r = dict_gen(c)
        
        for track in r:

            parsed_uri = urlparse(track["url"])
            domain = '{uri.netloc}'.format(uri=parsed_uri)
            
            customreader = readers[domain]()
            customreader.sync(track)
            
            time.sleep(5)
            

        
        c.close()
        db.close()
        
        time.sleep(sync_urls_delay)

Thread(target=syncTracks).start()

def mineData():
    tracking = []
    while True:
        
        db = connection()
        c = db.cursor()
        c2 = db.cursor()
        
        c.execute("select * from mine_data_requests where done=0")
        r = dict_gen(c)
        
        for req in r:
            parsed_uri = urlparse(req["url"])
            domain = '{uri.netloc}'.format(uri=parsed_uri)
            
            print "new mining request", req["url"], domain
            
            miner = miners[domain]()
            itens = miner.get_itens(req["url"])
            c2.execute("update mine_data_requests set done=1 where id=%s",(req["id"],))
            db.commit()
            
            print itens
        
        c.close()
        db.close()
        
        time.sleep(check_new_minig_requests_delay)

Thread(target=mineData).start()