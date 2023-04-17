Instance: patient-israeli-with-statistical-area
InstanceOf: ILCorePatient
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient with statistical area</div>"
* text.status = #generated

* identifier[0].system = $il-id
* identifier[0].value = "000000018"
* extension[hmo].valueCodeableConcept = $payer#101 "קופת חולים כללית"
* active = true
* name.family = "בן ברוך"
* name.given = "יעלה"
* name.text = "יעלה בן ברוך"
* telecom[0].system = #phone
* telecom[0].value = "052467910"
* telecom[0].use = #home
* telecom[1].system = #email
* telecom[1].value = "Israel@example.com"
* gender = #female
* birthDate = "2003-04-17"
* address.use = #home
* address.type = #physical
* address.text = "סעדון אליהו 4 א' אור יהודה"
* address.line = "סעדון אליהו 4 א'"
* address.city = "אור יהודה"
// * address.extension[0].coding = $city-code
// * address.city.extension[cityCode].url = $ext-ct
* address.city.extension[cityCode].valueCodeableConcept = $city-code#2400
// TODO - add extension[cityCode].system

* address.line.extension[streetName].valueString = "סעדון אליהו"
* address.line.extension[houseNumber].valueString = "4"
* address.line.extension[buildingNumberSuffix].valueString = "א'"
* address.line.extension[unitId].valueString = "4"
* address.line.extension[postBox].valueString = "1446"
* address.postalCode = "6039725" 
* address.district = "אור יהודה"
* address.country = "IL"
* address.extension[geolocation].extension[longitude].valueDecimal = 182468.59
* address.extension[geolocation].extension[latitude].valueDecimal = 670131.38
* address.extension[statArea].valueIdentifier.system = "http://fhir.health.gov.il/identifier/cbs-statistical-area"
* address.extension[statArea].valueIdentifier.value = "24000007"



* deceasedBoolean = false

