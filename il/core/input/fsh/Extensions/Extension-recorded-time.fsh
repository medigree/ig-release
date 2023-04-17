Extension: RecordedTime
Id: ext-recorded-time
Title: "Ext: Recorded Time"
Description: "Extension: The time in whitch an event was recorded"

* ^url = $ext-recorded-time
* ^version = "0.11.0"
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* ^context[1].type = #element
* ^context[1].expression = "MedicationAdministration"
* ^context[2].type = #element
* ^context[2].expression = "MedicationDispense"

* value[x] only time