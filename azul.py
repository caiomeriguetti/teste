#coding=utf8
import requests
from bs4 import BeautifulSoup
from datamocks import *
import datetime
from common import TicketSearcher, safe_str

class AzulSearcher(TicketSearcher):
    
    def get_prices(self, list):
        result = []
        for ticket in list:
            infoScale = ticket.find("td")
            
            timeGoing = infoScale.find("div", {"class": "output"}).text
            timeOutgoing = infoScale.find("div", {"class": "arrival"}).text
            
            taxas = ticket.findAll("td", {"class": "fareCol1"})
            values = []
            for taxa in taxas:
                fareValue = taxa.find("span", {"class": "farePrice"}).text
                if fareValue:
                    strvalue = fareValue
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

        data = mock_azul_search
        data["ControlGroupSearchView2$AvailabilitySearchInputSearchView2$DropDownListMarketDay1"] = ida.strftime("%d")
        data["ControlGroupSearchView2$AvailabilitySearchInputSearchView2$DropDownListMarketMonth1"] = ida.strftime("%Y-%m")
        data["ControlGroupSearchView2$AvailabilitySearchInputSearchView2$DropDownListMarketDay2"] = volta.strftime("%d")
        data["ControlGroupSearchView2$AvailabilitySearchInputSearchView2$DropDownListMarketMonth2"] = volta.strftime("%Y-%m")
        data["ControlGroupSearchView2$AvailabilitySearchInputSearchView2$TextBoxMarketOrigin1"] = airport_from
        data["ControlGroupSearchView2$AvailabilitySearchInputSearchView2$TextBoxMarketDestination1"] = airport_to
        
        r = s.post("http://viajemais.voeazul.com.br/Search2.aspx", data=data)
        s = BeautifulSoup(r.text.encode("utf8"))
        
        container_ida = s.find('div', {"id": "GoingPrices"})
        list_ida = container_ida.findAll("tr", {"class": "flightInfo"})
        
        container_volta = s.find('div', {"id": "BackPrices"})
        list_volta = container_volta.findAll("tr", {"class": "flightInfo"})
        
        results_ida = self.get_prices(list_ida)
        results_volta = self.get_prices(list_volta)

        return {"going": results_ida, "returning": results_volta}
        