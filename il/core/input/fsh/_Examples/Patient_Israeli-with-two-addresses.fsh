Instance: patient-with-two-addresses
InstanceOf: ILCorePatient
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">רונן חרזי</div>"
* text.status = #generated

* identifier[0].system = $il-id
* identifier[0].value = "000000018"
* extension[hmo].valueCodeableConcept = $payer#103 "קופת חולים מכבי"
* active = true
* name.family = "חרזי"
* name.given = "רונן"
* name.text = "רונן חרזי"
* telecom[0].system = #phone
* telecom[0].value = "050545411"
* telecom[0].use = #home
* telecom[1].system = #email
* telecom[1].value = "Ronen.h@example.com"
* gender = #male
* birthDate = "1958-01-01"
* birthDate.extension[0].url = $ext-hebrew-date
* birthDate.extension[0].extension[0].url = "display"
* birthDate.extension[0].extension[0].valueString = "ט' בטבת ה'תשי\"ח"
* birthDate.extension[0].extension[1].url = "day"
* birthDate.extension[0].extension[1].valueCodeableConcept.coding.system = $hebrew-date-day
* birthDate.extension[0].extension[1].valueCodeableConcept.coding.code = #9
* birthDate.extension[0].extension[1].valueCodeableConcept.coding.display = "ט'"
* birthDate.extension[0].extension[2].url = "month"
* birthDate.extension[0].extension[2].valueCodeableConcept = $hebrew-date-month#4 
* birthDate.extension[0].extension[2].valueCodeableConcept.coding.display = "טבת"
* birthDate.extension[0].extension[3].url = "year"
* birthDate.extension[0].extension[3].valueString = "ה'תשי\"ח"
* address[+].use = #home
* address[=].type = #physical
* address[=].text = "פרג 7ב' דירה 3 גדרה"
* address[=].city = "גדרה"
* address[=].city.extension[cityCode].valueCodeableConcept = $city-code#2660
* address[=].line[+] = "פרג 7'"
* address[=].line[=].extension[streetName].valueString = "פרג"
* address[=].line[=].extension[houseNumber].valueString = "7"
* address[=].line[+] = "כניסה ב'"
// * address[=].line[=].extension[buildingNumberSuffix].valueString = "ב'"
* address[=].line[+] = "דירה 3'"
* address[=].line[=].extension[unitId].valueString = "3"
* address[=].line[+].extension[postBox].valueString = "1446"
// * address[=].line[=].extension[postBox].valueString = "1446"
* address[=].postalCode = "6964101" 
* address[=].district = "גדרה"
* address[=].country = "IL"
* address[=].extension[geolocation].extension[longitude].valueDecimal = 182468.59
* address[=].extension[geolocation].extension[latitude].valueDecimal = 670131.38
* address[+].use = #home
* address[=].type = #postal
* address[=].text = "ת\"ד 1446 גדרה"
* address[=].postalCode = "6964000" 
// * address[=].line = null
* address[=].city = "גדרה"
* address[=].city.extension[cityCode].valueCodeableConcept = $city-code#2550

* deceasedBoolean = false

