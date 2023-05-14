Instance: allergyIntolerance-penut-allergy-resolved
InstanceOf: ILCoreAllergyIntolerance
Usage: #example
Title: "AllergyIntollerance: penut-allergy"
Description: "An example of ILCoreAllergyIntolerance of a penut allergy"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Penut Allergy</div>"
* text.status = #generated

* patient.reference = "Patient/patient-israeli-with-two-identifiers"
* clinicalStatus = $clinicalStatus#resolved
* verificationStatus = $verificationStatus#confirmed
* type = #allergy
* criticality = #high
* code = $sct#91935009 "Allergy to peanuts"
* category = #food
* reaction.substance = $sct#417889008 "Arachis oil (substance)"
* reaction.manifestation = $sct#39579001 "Anaphylaxis (disorder)"
* reaction.severity = #severe
* reaction.exposureRoute = $sct#26643006 "Oral route"
* extension[AllergyIntoleranceEnd].extension[endDate].valueDateTime = "2020-01-01"
* extension[AllergyIntoleranceEnd].extension[reasonEnded].valueCodeableConcept = $sct#63098009 "Clinical immunologist (occupation)"






