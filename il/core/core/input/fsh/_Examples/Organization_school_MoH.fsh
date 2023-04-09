Instance:   organization-school-moe
InstanceOf: ILCoreOrganization

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">תיכון כצנלסון</div>"
* text.status = #generated
* identifier[moe-inst].value = "440172"
* identifier.use = #official
* active = true
* name = "תיכון כצנלסון"

//telecom
* telecom.system = #phone
* telecom.value = "09-7433376"
* telecom.use = #work

//address 
* address.use = #work
* address.type = #physical
* address.text = "אזר 43 כפר סבא"
* address.line = "אזר 43"
* address.city = "כפר סבא"
* address.city.extension[cityCode].valueCodeableConcept = $city-code#6900
// TODO - add extension[cityCode].system

* address.line.extension[streetName].valueString = "אזר"
* address.line.extension[houseNumber].valueString = "43"
* address.postalCode = "4410601"  
* address.country = "IL"
 