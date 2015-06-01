#coding=utf8
import time
import datetime

from common import connection, dict_gen, safe_str
from voegol import GolSearcher
from azul import AzulSearcher

while True:
    
    db = connection()
    c = db.cursor()
    c2 = db.cursor()
    
    c.execute("select * from ticket_search where active=1")
    
    r = dict_gen(c)
    
    searchers = [GolSearcher, AzulSearcher]
    
    for search in r:
        
        try:
            from_airport = search["from"]
            to_airport = search["to"]
            start_date = search["start_date"].strftime("%Y-%m-%d")
            end_date = search["end_date"].strftime("%Y-%m-%d")
            
            results = {}
            
            #print search
            
            for searcher in searchers:
                tickets = searcher().search(from_airport, to_airport, start_date, end_date)
                
                smallest_going = tickets["going"][0]
                
                for ticket in tickets["going"]:
                    if ticket["value"] < smallest_going["value"]:
                        smallest_going = ticket
                
                smallest_returning = tickets["returning"][0]
                
                for ticket in tickets["returning"]:
                    if ticket["value"] < smallest_returning["value"]:
                        smallest_returning = ticket
        
                results[searcher.__name__] = {"going": smallest_going,
                                              "returning": smallest_returning,
                                              "sum": smallest_going["value"] + smallest_returning["value"]}
            
            smallest = None
            for name in results:
                if smallest == None:
                    smallest = {"name": name, "result": results[name]}
                elif smallest["result"]["sum"] > results[name]["sum"]:
                    smallest = {"name": name, "result": results[name]}
            
            #print (smallest["result"]["sum"], smallest["name"], search["id"])
            
            c2.execute("update ticket_search set smallest_price = %s, smallest_service_name = %s where id = %s", (smallest["result"]["sum"], smallest["name"], search["id"]))
            db.commit()
            
            print smallest["result"]["sum"], search["smallest_price"]
            
            if round(smallest["result"]["sum"], 2) != round(search["smallest_price"], 2):
                c2.execute("insert into ticket_prices (ticket_search_id, price, price_date, service_name, from_price) values (%s, %s, %s, %s, %s)", (search["id"], smallest["result"]["sum"], datetime.datetime.now(), smallest["name"], float(search["smallest_price"])))
                db.commit()
            
        except Exception, e:
            print e
            pass
    
    c.close()
    db.close()
    
    
    print "Sleeping 5 secs..."
    time.sleep(5)
    