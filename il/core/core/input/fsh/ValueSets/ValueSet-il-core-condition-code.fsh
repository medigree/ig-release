ValueSet: ILCoreConditionCode
Id: il-core-condition-code
Title: "IL Core Condition Code"
Description: "A list of codes for conditions for the IL Core"
* ^url = $vs-il-core-condition-code
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* include codes from system $sct where concept descendent-of #404684003 "Clinical finding (finding)"
* include codes from system $sct where concept descendent-of #243796009 "Situation with explicit context (situation)"
* include codes from system $sct where concept descendent-of #272379006 "Event (event)"
* include codes from system $sct where concept descendent-of #312850006 "History of disorder (situation)"
* include codes from system $sct where concept descendent-of #49755003 "Morphologically abnormal structure (morphologic abnormality)"  
* include codes from system http://hl7.org/fhir/sid/icd-10
* include codes from system http://hl7.org/fhir/sid/icd-10-cm
* include codes from valueset $vs-icd9-cm-diagnoses
* include codes from valueset $vs-icd9-il-diagnoses
* include codes from system http://terminology.hl7.org/CodeSystem/icd-o-3
* $sct#160245001 "No current problems or disability"