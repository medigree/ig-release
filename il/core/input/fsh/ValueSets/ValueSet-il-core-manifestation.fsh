ValueSet: ILCoreManifestation
Id: il-core-manifestation
Title: "IL Core Condition Codes"
Description: "A list of codes for intolerance manifestation for the IL Core"
* ^url = $vs-il-core-manifestation
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* include codes from system $sct where concept is-a #404684003 "Clinical finding (finding)"
* include codes from system $sct where concept is-a #241929008 "Acute allergic reaction (disorder)"
* include codes from system $sct where concept is-a #312850006 "History of disorder (situation)"
* include codes from system $sct where concept is-a #49755003 "Morphologically abnormal structure (morphologic abnormality)"
* include codes from system http://hl7.org/fhir/sid/icd-10
* include codes from system http://hl7.org/fhir/sid/icd-10-cm
* include codes from valueset $vs-icd9-cm-diagnoses 
* include codes from valueset $vs-icd9-il-diagnoses
