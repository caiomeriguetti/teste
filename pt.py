#coding=utf-8
from threading import Thread
import requests
from bs4 import BeautifulSoup
import MySQLdb
import datetime
import time
import smtplib
delay = 20 # seconds

def dict_gen(curs):
    ''' From Python Essential Reference by David Beazley
    '''
    import itertools
    field_names = [d[0].lower() for d in curs.description]
    while True:
        rows = curs.fetchmany()
        if not rows: return
        for row in rows:
            yield dict(itertools.izip(field_names, row))

def connection():
    return MySQLdb.connect(host="localhost",user="root",
                  passwd="",db="pt")

def safe_str(obj):
    """ return the byte string representation of obj """
    try:
        return str(obj)
    except UnicodeEncodeError:
        # obj is unicode
        return unicode(obj).encode('unicode_escape')

def read(url):
    
    while True:
        
        try:
        
            resp = requests.get(url)
            
            s = BeautifulSoup(resp.text)
            
            tit = s.find("h1",{"class": "mp-tit-name"})
            
            title = tit["title"]
            price = s.find("div",{"class": "mp-price"})
            price = price.findAll("span")[1].text.split(" ")[1].replace(".","")
            price = float(price.replace(",", "."))
            
            db = connection()
            c = db.cursor()
            c.execute(""" select * from track where url = %s """, (url,))
            r = dict_gen(c)
            dbdata = None
            for track in r:
                dbdata = track
            
            if not(dbdata):
                c.execute("insert into track (url, `when`, price, title) values (%s, %s, %s, %s)", (url, datetime.datetime.now(), price, title))
                db.commit()
                return
            
            dbprice = float(dbdata["price"])
            
            if price > dbprice or price < dbprice:
                print "newprice ", price
                c.execute("insert into prices (track_id, price, `when`) values (%s, %s, %s)", (dbdata["id"], price, datetime.datetime.now()))
                db.commit()
                c.execute("update track set price = %s, title = %s, `when` = %s where id = %s", (price, title, datetime.datetime.now(), dbdata["id"]))
                db.commit()
                
                to = 'caiomeriguetti@gmail.com'
                gmail_user = 'caiomeriguetti@gmail.com'
                gmail_pwd = 'izszygyncvtfwicz'
                smtpserver = smtplib.SMTP("smtp.gmail.com",587)
                smtpserver.ehlo()
                smtpserver.starttls()
                smtpserver.ehlo
                smtpserver.login(gmail_user, gmail_pwd)
                header = 'To:' + to + '\n' + 'From: ' + gmail_user + '\n' + 'Subject:Price Change - '+safe_str(title)+' \n'
                msg = header + '\n Price changed from '+str(dbprice)+' to '+str(price)+' \n\n'
                msg = msg + '\n\n '+url+' \n\n'
                smtpserver.sendmail(gmail_user, to, msg)
                smtpserver.close()
            
            c.close()
            db.close()
        except Exception, e:
            print e
            
        time.sleep(delay)


def syncTracks():
    tracking = []
    while True:
        
        db = connection()
        c = db.cursor()
        
        c.execute("select * from track")
        r = dict_gen(c)
        
        for track in r:
            
            if track["url"] not in tracking:
                
                print "new url", track["url"]
                
                Thread(target=read, args=(track["url"],)).start()
                tracking.append(track["url"])
        
        c.close()
        db.close()
        
        time.sleep(10)


Thread(target=syncTracks).start()