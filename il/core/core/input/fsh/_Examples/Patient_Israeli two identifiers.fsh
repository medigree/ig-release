Instance: patient-israeli-with-two-identifiers
InstanceOf: ILCorePatient
Description: "Israeli Patient with two identifiers"
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient with two identifiers</div>"
* text.status = #generated

* identifier[0].system = $il-id
* identifier[0].value = "000000018"
* identifier[1].type = $id-type#PPN 
* identifier[1].system = "http://hl7.org/fhir/sid/passport-GBR"
* identifier[1].value = "8876543"
* extension[hmo].valueCodeableConcept = $payer#103 "קופת חולים מכבי"
* active = true
* name.family = "ישראל"
* name.given = "ישראלי"
* name.text = "ישראל ישראלי"
* telecom[0].system = #phone
* telecom[0].value = "052467911"
* telecom[0].use = #home
* telecom[1].system = #email
* telecom[1].value = "Israel@example.com"
* gender = #male
* birthDate = "2003-04-17"
* address.use = #home
* address.type = #physical
* address.text = "לח\"י 1 דירה 4 תל אביב"
* address.line = "לח\"י 1"
* address.city = "תל אביב"
// * address.extension[0].coding = $city-code
// * address.city.extension[cityCode].url = $ext-ct
* address.city.extension[cityCode].valueCodeableConcept = $city-code#5000
// TODO - add extension[cityCode].system

* address.line.extension[streetName].valueString = "לח\"י"
* address.line.extension[houseNumber].valueString = "1"
* address.line.extension[buildingNumberSuffix].valueString = "א'"
* address.line.extension[unitId].valueString = "4"
* address.line.extension[postBox].valueString = "32"
* address.postalCode = "6710341" 
* address.district = "תל אביב"
* address.country = "IL"
* address.extension[geolocation].extension[longitude].valueDecimal = 182468.59
* address.extension[geolocation].extension[latitude].valueDecimal = 670131.38
* address.extension[statArea].valueIdentifier.system = "http://fhir.health.gov.il/identifier/cbs-statistical-area"
* address.extension[statArea].valueIdentifier.value = "50000935"

* deceasedBoolean = false
 