Instance: example-findRisc-screeningScoreResult
InstanceOf: Observation
Title: "Example - FINDRISC screening score result"
Description: "FINDRISC screening score result"
Usage: #example
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-scoreresult"
* status = #final
* category = https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-score-category#risk
* code = $sct#763117005 "FINDRISC (Finnish Diabetes Risk Score) score"
* code.text = "23.5"
* subject = Reference(rs-findRisc-patient)
* effectivePeriod.start = "2020-10-06T13:28:17.239+02:00"
* effectivePeriod.end = "2020-10-06T13:28:17.239+02:00"
* issued = "2020-10-06T13:28:17.239+02:00"
* performer = Reference(rs-findRisc-pharmacist)
* valueInteger = 18
* interpretation = $v3-ObservationInterpretation#H "High"
* interpretation.text = "Score is high. The paient need to check."
* note.text = "Remark: The patient's score is high since 3 months."
* referenceRange[0].low.value = 0
* referenceRange[=].high.value = 3
* referenceRange[=].type.text = "Very low"
* referenceRange[+].low.value = 4
* referenceRange[=].high.value = 8
* referenceRange[=].type.text = "Low"
* referenceRange[+].low.value = 9
* referenceRange[=].high.value = 12
* referenceRange[=].type.text = "Moderate"
* referenceRange[+].low.value = 13
* referenceRange[=].high.value = 20
* referenceRange[=].type.text = "High"
* referenceRange[+].low.value = 21
* referenceRange[=].high.value = 26
* referenceRange[=].type.text = "Very high"
* derivedFrom = Reference(QuestionnaireResponse/example-findRisc-screeningResponse)