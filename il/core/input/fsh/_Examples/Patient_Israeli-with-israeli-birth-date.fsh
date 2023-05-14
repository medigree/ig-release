Instance: patient-with-hebrew-date
InstanceOf: ILCorePatient
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">אילן רם</div>"
* text.status = #generated

* identifier[0].system = $il-id
* identifier[0].value = "000000018"
* extension[hmo].valueCodeableConcept = $payer#102 "קופת חולים לאומית"
* active = true
* name.family = "רם"
* name.given = "אילן"
* name.text = "אילן רם"
* telecom[0].system = #phone
* telecom[0].value = "052467911"
* telecom[0].use = #home
* telecom[1].system = #email
* telecom[1].value = "Israel@example.com"
* gender = #male
* birthDate = "2021-04-17"
* birthDate.extension[0].url = $ext-hebrew-date
* birthDate.extension[0].extension[0].url = "display"
* birthDate.extension[0].extension[0].valueString = "ה' באייר ה'תשפ\"א"
* birthDate.extension[0].extension[1].url = "day"
* birthDate.extension[0].extension[1].valueCodeableConcept.coding.system = $hebrew-date-day
* birthDate.extension[0].extension[1].valueCodeableConcept.coding.code = #5
* birthDate.extension[0].extension[1].valueCodeableConcept.coding.display = "ה'"
* birthDate.extension[0].extension[2].url = "month"
* birthDate.extension[0].extension[2].valueCodeableConcept = $hebrew-date-month#8 
* birthDate.extension[0].extension[2].valueCodeableConcept.coding.display = "אייר"
* birthDate.extension[0].extension[3].url = "year"
* birthDate.extension[0].extension[3].valueString = "ה'תשפ\"א"
* address.use = #home
* address.type = #physical
* address.text = "אלכסנדר פן 1א' דירה 4 תל אביב"
* address.line = "אלכסנדר פן 1א"
* address.city = "תל אביב"
// * address.extension[0].coding = $city-code
// * address.city.extension[cityCode].url = $ext-ct
* address.city.extension[cityCode].valueCodeableConcept = $city-code#5000
// TODO - add extension[cityCode].system

* address.line.extension[streetName].valueString = "פן אלכסנדר"
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

