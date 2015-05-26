#coding=utf-8
from threading import Thread
import requests
from bs4 import BeautifulSoup
import MySQLdb
import datetime
import time
import smtplib
from urlparse import urlparse, parse_qs

sync_urls_delay = 10
check_new_minig_requests_delay = 10

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

def safe_unicode(obj, *args):
    """ return the unicode representation of obj """
    try:
        return unicode(obj, *args)
    except UnicodeDecodeError:
        # obj is byte string
        ascii_text = str(obj).encode('string_escape')
        return unicode(ascii_text)

def safe_str(obj):
    """ return the byte string representation of obj """
    try:
        return str(obj)
    except UnicodeEncodeError:
        # obj is unicode
        return unicode(obj).encode('unicode_escape')
