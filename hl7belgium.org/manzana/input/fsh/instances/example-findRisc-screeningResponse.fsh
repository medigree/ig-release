Instance: example-findRisc-screeningResponse
InstanceOf: QuestionnaireResponse
Title: "Example - FINDRISC screening response "
Description: "FINDRISC screening response (QuestionnaireResponse)"
Usage: #example
* questionnaire = "http://hl7belgium.org/profiles/fhir/manzana/Questionnaire/rs-findRisc-questionnaire"
* status = #completed
* subject = Reference(rs-findRisc-patient)
* author = Reference(rs-findRisc-pharmacist)
* source = Reference(rs-findRisc-patient)
* item[0].linkId = "patientAge"
* item[=].answer.valueString = ">=45-54"
* item[+].linkId = "bmi"
* item[=].answer.valueString = "<25"
* item[+].linkId = "waistCircumference"
* item[=].answer.valueString = ">=88"
* item[+].linkId = "medication-highBloodPressure"
* item[=].answer.valueString = "false"
* item[+].linkId = "history-highBloodGlucose"
* item[=].answer.valueString = "true"
* item[+].linkId = "physical-activity"
* item[=].answer.valueString = ">=4-hours-week"
* item[+].linkId = "daily-consume-veg-fruit"
* item[=].answer.valueString = ">=5-times-day"
* item[+].linkId = "family-history-diabetes"
* item[=].answer.valueString = "first-degree"