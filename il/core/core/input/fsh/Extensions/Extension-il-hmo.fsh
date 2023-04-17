Extension: IsraelHMO
Id: ext-il-hmo
Title: "Ext: Israel Health Management Organization (קופת חולים)"
Description: "Extension: Israel Health Management Organizations (קופות חולים)"

* ^url = $ext-hmo
* ^version = "0.11.0"
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "Patient"

* value[x] only CodeableConcept
* valueCodeableConcept from $vs-hmo (required)
* valueCodeableConcept ^example.valueCodeableConcept = $payer#101 "קופת חולים כללית"
* valueCodeableConcept ^example.label = "Valid Example"
