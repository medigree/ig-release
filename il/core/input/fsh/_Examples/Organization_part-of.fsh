Instance:   organization-part-of-ministry-of-health
InstanceOf: ILCoreOrganization

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">מכון מחקר</div>"
* text.status = #generated
* active = true
* name = "מכון מחקר בתוך משרד הבריאות"

//telecom
* telecom.system = #phone
* telecom.value = "08-6241011"
* telecom.use = #work

//address 
* address.use = #work
* address.type = #physical
* address.text = "ירמיהו 39 ירושלים"
* address.line = "ירמיהו 39"
* address.city = "ירושלים"
* address.city.extension[cityCode].valueCodeableConcept = $city-code#3000
// TODO - add extension[cityCode].system

* address.line.extension[streetName].valueString = "ירמיהו"
* address.line.extension[houseNumber].valueString = "39"
* address.postalCode = "9446724"  
* address.country = "IL"
* partOf.reference = "Organization/organization-ministry-of-health"
 