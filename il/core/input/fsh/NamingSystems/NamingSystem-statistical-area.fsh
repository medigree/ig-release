Instance: cbs-statistical-area
InstanceOf: NamingSystem
Usage: #definition

* name = "Israeli CBS statistical area"
* status = #active
* kind = #identifier
* date = "2021-11-23"
* publisher = "Israeli Central Bureau of Statistic"
* responsible = "Israeli CBS"
* type = $id-type#LI "Labor and industries number"  //temp
* type.text = "National Person Identifier" //temp
* description = "Identifies statistical sub-divisions of cities in Israel as defined by CBS."
* jurisdiction[0] = urn:iso:std:iso:3166#IL
* usage = "A concatination of the city symbol + 4-digit statistical area code in the settelment. Full CBS number conatins two parts: City symbol + statistical area number. E.g.: Jerusalem (3000) 1131 area produces -> 30001131"
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://fhir.health.gov.il/identifier/cbs-statistical-area"
* uniqueId[0].preferred = true