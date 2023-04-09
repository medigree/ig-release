Extension: AllergyIntoleranceEnd
Id: ext-allergy-intolerance-end
Title: "Ext: Allergy Intolerance End"
Description: "Supports the date when the allergy or intolerance was no longer valid, and/or, the reason why the allergy or intolerance is no longer valid."
* ^version = "0.11.0"
* ^date = "2022-08-15"
* ^language = #en-US
* ^url = $ext-allergy-intolerance-end
* ^status = #draft
* ^purpose = "This extension extends the AllergyIntolerance resource to support the exchange of information describing the date when the allergy or intolerance was no longer valid, and/or, the reason why the allergy or intolerance is no longer valid, which is currently not supported by the FHIR standard."
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"

* extension contains
    endDate 0..1 and
    reasonEnded 0..1
* extension[endDate] ^short = "The date the allergy or intolerance was recorded as no longer valid"
* extension[endDate] ^definition = "The date the allergy or intolerance was recorded as no longer valid."
* extension[endDate].value[x] 1..
* extension[endDate].value[x] only dateTime
* extension[endDate].value[x] ^short = "The date the allergy was recorded as no longer valid"
* extension[endDate].value[x] ^definition = "The date the allergy was recorded as no longer valid."
* extension[endDate].valueDateTime ^example.valueDateTime = "2022-01-01"
* extension[endDate].valueDateTime ^example.label = "Valid Example"
* extension[reasonEnded] ^short = "The reason why the allergy or intolerance has been resolved"
* extension[reasonEnded] ^definition = "The reason why the allergy or intolerance has been resolved."
* extension[reasonEnded].value[x] 1..
* extension[reasonEnded].value[x] only CodeableConcept
* extension[reasonEnded].valueCodeableConcept from $vs-il-core-allergy-intolerance-end-reason (extensible)
* extension[reasonEnded].valueCodeableConcept ^example.valueCodeableConcept = $sct#165009005 "Allergy testing - no reaction (finding)"
* extension[reasonEnded].valueCodeableConcept ^example.label = "Valid Example"
* extension[reasonEnded].value[x] ^short = "The reason why the allergy or intolerance has been resolved"
* extension[reasonEnded].value[x] ^definition = "The reason why the allergy or intolerance has been resolved."
