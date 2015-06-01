from django.shortcuts import render, render_to_response
from django.http.response import HttpResponse
from django.template.context import RequestContext

def index(req):
    
    return render_to_response("searches.html", None, RequestContext(req))