Extension: StatisticalArea
Id: ext-statistical-area
Title: "Ext: Statistical Area"
Description: "Extension: Statistical Area. A concatination of the city symbol + 4-digit statistical area code in settelment. Full CBS number conatins two parts: City symbol + statistical number. E.g.: Jerusalem (3000) 113 area produces -> 3000113"
* ^language = #en-US
* ^url = $ext-statistical-area
* ^version = "0.11.0"
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "Address" 

* value[x] only Identifier
* valueIdentifier.system from $vs-statistical-area-uri (extensible)
* valueIdentifier ^example.valueIdentifier.system = $stat-area-id
* valueIdentifier ^example.valueIdentifier.value = "40000733"
* valueIdentifier ^example.label = "Valid Example"
