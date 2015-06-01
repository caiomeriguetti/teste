#coding=utf8

str = """ 
_authkey_:null
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$TextBoxPromoCode:CALLCENT
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$RadioButtonMarketStructure:RoundTrip
__EVENTTARGET:ControlGroupSearchView2$LinkButtonSubmit
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$TextBoxMarketOrigin1:Vitória (VIX)
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$CheckBoxUseMacOrigin1:
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$TextBoxMarketDestination1:Rio de Janeiro - Santos Dumont (SDU)
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$CheckBoxUseMacDestination1:
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$DropDownListMarketDay1:18
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$DropDownListMarketMonth1:2015-09
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$DropDownListMarketDay2:20
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$DropDownListMarketMonth2:2015-09
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$DropDownListPassengerType_ADT:1
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$DropDownListPassengerType_CHD:0
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$DropDownListPassengerType_INFANT:0
ControlGroupSearchView2$AvailabilitySearchInputSearchView2$DropDownListFareTypes:R"""

str=str.strip()
str = str.split("\n")
newlines = []
for line in str:
    line=line.split(":")
    newlines.append("\""+line[0]+"\":\""+line[1]+"\"")
    
    
content="{\n"+",\n".join(newlines)+"\n}"
f = open("converted.json", "w+")
f.write(content)
f.close()