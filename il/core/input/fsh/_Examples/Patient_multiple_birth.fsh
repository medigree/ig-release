Instance: patient-with-multiple-birth
InstanceOf: ILCorePatient
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">שמואלה לוי</div>"
* text.status = #generated

* identifier[0].system = $il-id
* identifier[0].value = "000000018"
* extension[hmo].valueCodeableConcept = $payer#103 "קופת חולים מכבי"
* active = true
* name.family = "לוי"
* name.given = "שמואלה"
* name.text = "שמואלה לוי"
* telecom[0].system = #phone
* telecom[0].value = "055555555"
* telecom[0].use = #home
* telecom[1].system = #email
* telecom[1].value = "Israel@example.com"
* gender = #female
* multipleBirthInteger = 2
* birthDate = "2003-04-17"
* address.use = #home
* address.type = #physical
* address.text = "הירקון 1א' דירה 4 תל אביב"
* address.line = "הירקון 1א"
* address.city = "תל אביב"
// * address.extension[0].coding = $city-code
// * address.city.extension[cityCode].url = $ext-ct
* address.city.extension[cityCode].valueCodeableConcept = $city-code#5000
// TODO - add extension[cityCode].system

* address.line.extension[streetName].valueString = "הירקון"
* address.line.extension[houseNumber].valueString = "1"
* address.line.extension[buildingNumberSuffix].valueString = "א'"
* address.line.extension[unitId].valueString = "4"
* address.line.extension[postBox].valueString = "1446"
* address.postalCode = "6964101" 
* address.district = "תל אביב"
* address.country = "IL"
* address.extension[geolocation].extension[longitude].valueDecimal = 182468.59
* address.extension[geolocation].extension[latitude].valueDecimal = 670131.38


* deceasedBoolean = false

