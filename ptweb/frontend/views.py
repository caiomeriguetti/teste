#coding=utf8
from django.shortcuts import render, render_to_response
from django.http.response import HttpResponse
from django.template.context import RequestContext
from frontend import common

def notifications(req):
    
    db = common.connection()
    c = db.cursor()
    
    c.execute("select * from notifications where from_price > to_price order by id desc")
    
    results = list(common.dict_gen(c))
    
    for result in results:
        result["pct"] = int((result["to_price"] - result["from_price"])*100/result["from_price"])
    
    db.close()
    c.close()
    
    return render_to_response("notifications.html", {"notifications": results}, RequestContext(req))