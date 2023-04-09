ValueSet: ILCoreObservationValue
Id: il-core-observation-value
Title: "IL Core Observation Value Codes"
Description: """A list of value codes for observations for the IL Core \n
Note: The entire LOINC code system is included in this ValueSet although it should only include LOINC Answers - LOINC codes that start with 'LA'. Since there is no computable way to define a ValueSet according to the code's prefix, we rely on an invariant to enforce this rule."""
* ^url = $vs-il-core-observation-value
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* include codes from system $sct
* include codes from system $loinc