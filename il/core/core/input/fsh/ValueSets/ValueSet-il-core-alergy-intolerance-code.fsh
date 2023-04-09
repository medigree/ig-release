ValueSet: ILCoreAllergyIntoleranceCode
Id: il-core-allergy-intolerance-code
Title: "IL Core Allergy Intolerance Code"
Description: "A list of codes for Allergy Intolerance for the IL Core"
* ^url = $vs-il-core-allergy-intolerance-code
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* include codes from valueset http://hl7.org/fhir/ValueSet/substance-code
* include codes from system $sct where concept is-a #418038007 "Propensity to adverse reactions to substance"
* include codes from system $sct where concept is-a #716186003 "No Known Allergy (situation)"
* include codes from system http://hl7.org/fhir/sid/icd-10
* include codes from system http://hl7.org/fhir/sid/icd-10-cm
* include codes from valueset $vs-icd9-cm-diagnoses 
* include codes from valueset $vs-icd9-il-diagnoses
* include codes from valueset $vs-il-core-substance
* include codes from system $sct where concept is-a #416098002 "Drug allergy (disorder)"
* include codes from system $sct where concept is-a #414285001 "Food allergy (disorder)" 
* include codes from system $sct where concept is-a #426232007 "Environmental allergy (disorder)"
