#coding=utf-8
import requests
from bs4 import BeautifulSoup
from common import delay, connection, dict_gen, safe_str, safe_unicode, Reader
import time, datetime, smtplib

class CustomReader(Reader):
    
    def run(self):
        url = self.url
        
        while True:
        
            resp = requests.get(url)
            
            s = BeautifulSoup(resp.text)
            
            tit = s.find("div",{"class": "produtoNome"})
            title = tit.find("b").text.encode("utf8", errors="ignore")

            price = s.find("i",{"class": "price"})
            price = price.text.replace(".","")
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
                header = 'To:' + to + '\n' + 'From: ' + gmail_user + '\n' + 'Subject:Price Change - '+title+' \n'
                msg = header + '\n Price changed from '+str(dbprice)+' to '+str(price)+' \n\n'
                msg = msg + '\n\n '+url+' \n\n'
                smtpserver.sendmail(gmail_user, to, msg)
                smtpserver.close()
             
            c.close()
            db.close()

            time.sleep(delay)