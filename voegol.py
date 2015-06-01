#coding=utf8
import requests
from bs4 import BeautifulSoup
from datamocks import *
import datetime
from common import TicketSearcher, safe_str

class GolSearcher(TicketSearcher):
    
    def get_prices(self, list):
        result = []
        for ticket in list:
            infoScale = ticket.find("div", {"class": "infoScale"})
            labels = infoScale.findAll("b")
            
            timeGoing = infoScale.find("span", {"class": "timeGoing"}).text
            timeOutgoing = infoScale.find("span", {"class": "timeoutGoing"}).text
            
            taxas = ticket.findAll("div", {"class": "taxa"})
            values = []
            for taxa in taxas:
                fareValue = taxa.find("strong", {"class": "fareValue"})
                if fareValue:
                    strvalue = safe_str(fareValue.text)
                    strvalue = strvalue.split("\\xa0")[1]
                    strvalue = strvalue.replace(".", "")
                    strvalue = strvalue.replace(",", ".")
                    values.append(float(strvalue))
            
            if len(values):
                ticket = {"timeGoing": timeGoing, "timeOutgoing": timeOutgoing , "value": min(values)}
                result.append(ticket)
                
        return result
                
                
    def search(self, from_airport, to_airport, departure_date, return_date):
            
        s = requests.Session()
        
        ida = datetime.datetime.strptime(departure_date, "%Y-%m-%d")
        volta = datetime.datetime.strptime(return_date, "%Y-%m-%d")
        airport_from = from_airport
        airport_to = to_airport
        
        r = s.get("http://compre2.voegol.com.br/")
        bs = BeautifulSoup(r.text)
        viewState = bs.find("input",{"id": "viewState"})
        viewState = viewState["value"]
        
        headers={"Accept":"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
        "Accept-Encoding":"gzip, deflate",
        "Accept-Language":"en-US,en;q=0.8",
        "Cache-Control":"max-age=0",
        "Connection":"keep-alive",
        "Content-Type":"application/x-www-form-urlencoded",
        "Host":"compre2.voegol.com.br",
        "Origin":"http://www.voegol.com.br",
        "Referer":"http://www.voegol.com.br/pt-br/Paginas/default.aspx",
        "User-Agent":"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36"}
        
        data = mock_gol_search
        data["DepartureStation"] = airport_from
        data["DepartureDate"] = ida.strftime("%Y-%m-%d")
        data["ReturnDate"] = volta.strftime("%Y-%m-%d")
        data["data_ida"] = ida.strftime("%d/%m/%Y")
        data["data_volta"] = volta.strftime("%d/%m/%Y")
        data["ControlGroupSearchView$AvailabilitySearchInputSearchView$DropDownListMarketDay1"] = ida.strftime("%d")
        data["ControlGroupSearchView$AvailabilitySearchInputSearchView$DropDownListMarketMonth1"] = ida.strftime("%Y-%m")
        data["ControlGroupSearchView$AvailabilitySearchInputSearchView$DropDownListMarketDay2"] = volta.strftime("%d")
        data["ControlGroupSearchView$AvailabilitySearchInputSearchView$DropDownListMarketMonth2"] = volta.strftime("%Y-%m")
        data["ControlGroupSearchView$AvailabilitySearchInputSearchView$TextBoxMarketOrigin1"] = airport_from
        data["ControlGroupSearchView$AvailabilitySearchInputSearchView$TextBoxMarketDestination1"] = airport_to
        
        r = s.post("http://compre2.voegol.com.br/CSearch.aspx", data=data, headers=headers)
        s = BeautifulSoup(r.text.encode("utf8"))
        container_ida = s.find('div', {"id": "ida"})
        list_ida = container_ida.findAll("div", {"class": "lineTable"})
        
        container_volta = s.find('div', {"id": "volta"})
        list_volta = container_volta.findAll("div", {"class": "lineTable"})
        
        results_ida = self.get_prices(list_ida)
        results_volta = self.get_prices(list_volta)

        return {"going": results_ida, "returning": results_volta}