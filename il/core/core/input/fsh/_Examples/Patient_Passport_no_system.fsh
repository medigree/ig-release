Instance: patient-with-passport-identification-unknown-country
InstanceOf: ILCorePatient
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient with foreign passport- unknown-country</div>"
* text.status = #generated
// * identifier[0].type = $id-type#MR // this is for testing purposes. expected: Fail. 
* identifier[0].type = $id-type#PPN
// * identifier[0].system = "http://hl7.org/fhir/sid/passport-GBR"
// * identifier.system.extension contains $data-absent-reason named dar
* identifier.system.extension[$data-absent-reason].valueCode = #unknown "Unknown"

* identifier[0].value = "8876543"
* extension[hmo].valueCodeableConcept = $payer#101 "קופת חולים כללית"
* active = true
* name.family = "Smith"
* name.given[0] = "David" 
* name.given[1] = "John"
* name.text = "David John Smith"
* telecom[0].system = #phone
* telecom[0].value = "+4423456789"
* telecom[0].use = #mobile
* telecom[1].system = #email
* telecom[1].value = "johnsmith@example.com"
* gender = #male
* birthDate = "1994-03-22"
* address.text = "חניתה 20 חיפה"
* address.line = "חניתה 20"
* address.city = "חיפה"
* deceasedBoolean = false

* address.city.extension[cityCode].valueCodeableConcept = $city-code#4000
* address.line.extension[streetName].valueString = "חניתה"
* address.line.extension[houseNumber].valueString = "20"
* address.line.extension[unitId].valueString = "4"
* address.line.extension[postBox].valueString = "272"
* address.postalCode = "3244010" 
* address.district = "חיפה"
* address.country = "IL"
* address.extension[geolocation].extension[longitude].valueDecimal = 182468.59
* address.extension[geolocation].extension[latitude].valueDecimal = 670131.38
* address.extension[statArea].valueIdentifier.system = "http://fhir.health.gov.il/identifier/cbs-statistical-area"
* address.extension[statArea].valueIdentifier.value = "40000733"
* deceasedBoolean = false
