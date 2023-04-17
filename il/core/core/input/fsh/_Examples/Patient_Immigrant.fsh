Alias: $languages = urn:ietf:bcp:47 
Instance: patient-immigrant
InstanceOf: ILCorePatient
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient - immigrant</div>"
* text.status = #generated

* identifier[0].system = $il-id
* identifier[0].value = "000000018"
* extension[hmo].valueCodeableConcept = $payer#103 "קופת חולים מכבי"
* extension[immigration].extension[origin].valueCodeableConcept = $country-codes#USA
* extension[immigration].extension[destination].valueCodeableConcept = $country-codes#IL
* extension[immigration].extension[date].valueDate = "1982-06-30"
* extension[immigration].extension[status].valueCodeableConcept = $loinc#LA29155-1
* extension[immigration].extension[status].valueCodeableConcept.coding.display = "Naturalized citizen"
* active = true
* name.family = "לוי"
* name.given = "הרצל"
* name.text = "הרצל לוי"
* telecom[0].system = #phone
* telecom[0].value = "052467911"
* telecom[0].use = #home
* telecom[1].system = #email
* telecom[1].value = "Israel@example.com"
* gender = #female
* birthDate = "1951-04-17"
* address.use = #home
* address.type = #physical
* address.text = "אילת 34 תל אביב דירה 2"
* address.line = "אילת 34"
* address.city = "תל אביב"
// * address.extension[0].coding = $city-code
// * address.city.extension[cityCode].url = $ext-ct
* address.city.extension[cityCode].valueCodeableConcept = $city-code#5000
// TODO - add extension[cityCode].system

* address.line.extension[streetName].valueString = "אילת"
* address.line.extension[houseNumber].valueString = "34"
// * address.line.extension[buildingNumberSuffix].valueString = "א'"
* address.line.extension[unitId].valueString = "2"
* address.line.extension[postBox].valueString = "1446"
* address.postalCode = "6684501" 
* address.district = "תל אביב"
* address.country = "IL"
* address.extension[geolocation].extension[longitude].valueDecimal = 34.764885
* address.extension[geolocation].extension[latitude].valueDecimal = 32.058317

* communication.language.coding
  * system = "urn:ietf:bcp:47"
  * code = #ar
  * display = "Arabic"

* deceasedBoolean = false

    