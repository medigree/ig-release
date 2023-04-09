Instance: allergyIntolerance-aspirin-intolerance
InstanceOf: ILCoreAllergyIntolerance
Usage: #example
Title: "AllergyIntollerance: aspirin-intolerance"
Description: "An example of ILCoreAllergyIntolerance of a aspirin intolerance"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Penut Allergy</div>"
* text.status = #generated

* patient.reference = "Patient/patient-with-israeli-id"
* clinicalStatus = $clinicalStatus#active
* verificationStatus = $verificationStatus#confirmed
* type = #intolerance
* criticality = #low
* code = $sct#292044008 "Aspirin adverse reaction"
* category = #medication
* reaction.substance = $sct#387458008 "Aspirin (substance)"
* reaction.manifestation[+] = $sct#60862001 "Tinnitus (finding)"
* reaction.severity = #mild
* reaction.exposureRoute = $sct#26643006 "Oral route (qualifier value)"
* reaction.extension[duration].valueDuration = 3 'h'

