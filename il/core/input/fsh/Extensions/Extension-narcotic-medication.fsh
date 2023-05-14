Extension: NarcoticMedication
Id: ext-narcotic-medication
Title: "Ext: Narcotic Medication"
Description: "Extension: Noting if a medication is narcotic or not"

* ^url = $ext-narcotic-medication
* ^version = "0.11.0"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "MedicationRequest"

* value[x] only boolean