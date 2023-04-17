Instance: allergyIntolerance-latex-allergy
InstanceOf: ILCoreAllergyIntolerance
Usage: #example
Title: "AllergyIntollerance: latex-allergy"
Description: "An example of ILCoreAllergyIntolerance of a latex allergy"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Latex Allergy</div>"
* text.status = #generated

* patient.reference = "Patient/patient-with-israeli-id"
* clinicalStatus = $clinicalStatus#active
* verificationStatus = $verificationStatus#confirmed
* type = #allergy
* criticality = #low
* code = $sct#1003755004 "Allergy to Hevea brasiliensis latex protein (finding)"
* category = #biologic
* reaction.substance = $sct#111088007 "Latex (substance)"
* reaction.manifestation[+] = $sct#271807003 "Eruption of skin (disorder)"
* reaction.manifestation[+] = $sct#418290006 "Itching (finding)"
* reaction.severity = #mild
* reaction.exposureRoute = $sct#6064005 "Topical route (qualifier value)"

