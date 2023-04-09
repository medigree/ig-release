ValueSet: ILCoreObservationCode
Id: il-core-observation-code
Title: "IL Core Observation Codes"
Description: """A list of code codes for observations for the IL Core"""
* ^url = $vs-il-core-observation-code
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* include codes from system $loinc
* include codes from system $sct where concept is-a #363787002 "Observable entity(Observable entity)"
* include codes from system $sct where concept is-a #386053000 "Evaluation procedure(evaluation procedure)"  
* include codes from system $sct where concept is-a #404684003 "Clinical finding (finding)"
* include codes from system $sct where concept is-a #413350009 "Finding with explicit context (finding)"
* include codes from system $sct where concept is-a #272379006 "Event (event)"