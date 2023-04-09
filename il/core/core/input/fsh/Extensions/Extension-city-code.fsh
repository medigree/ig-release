Extension: CityCode
Id: ext-city-code
Title: "Ext: City Code"
Description: "A coded representation of the city, town or settlement"

* ^url = $ext-ct
* ^version = "0.11.0"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Address.city"
* value[x] only CodeableConcept
* valueCodeableConcept from $vs-city-code (required)
* valueCodeableConcept ^example.valueCodeableConcept = $city-code#4000 "חיפה"
* valueCodeableConcept ^example.label = "Valid Example"