Logical: FindRiscScreeningResponse
Parent: Element
Id: model-findRisc-screeningResponse
Description: "This is the logical model of the screening response."
* ^version = "0.2.0"
* ^status = #draft
* ^date = "2022-06-24T14:28:28+02:00"
* ^publisher = "HL7 Belgium"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://example.com"
//* ^type = "http://hl7belgium.org/profiles/fhir/StructureDefinition/model-findRisc-screeningResponse"
* ^jurisdiction.coding = urn:iso:std:iso:3166#BE
* recordDate 1..1 http://hl7.org/fhir/StructureDefinition/dateTime "The Date the answers were gathered" "The Date the answers were gathered"
* recorder 1..1 Reference(https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner) "Person who received the answers to the questions in the QuestionnaireResponse and recorded in the system." "Person who received the answers to the questions in the QuestionnaireResponse (Reference)"
* patient 1..1 Reference(https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient) "The unique patient identifier" "the unique patient identifier (Reference)"
* screeningName 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "The name of the screening tool" "The name of the screening tool (ex: FindRisc, name: ScreeningFindRisc)"
* status 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "The position of the questionnaire response within its overall lifecycle" "The position of the questionnaire response within its overall lifecycle"
* questionnaire 1..1 Reference(http://hl7.org/fhir/StructureDefinition/Questionnaire) "The resource of the questionnaire: http://hl7belgium.org/profiles/fhir/manzana/Questionnaire/rs-findRisc-questionnaire" "The resource of the questionnaire: http://hl7belgium.org/profiles/fhir/manzana/Questionnaire/rs-findRisc-questionnaire"
* age 1..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Question - Age" "The patients age"
* bmi 1..1 CodeableConcept "Question - Body mass index" "The patient body mass index"
* waistCircumference 1..1 CodeableConcept "Question - Waist circumference" "The patient circumference"
* physicalActivity 1..1 CodeableConcept "Question - Physical activity" "How much physical activity does the patient do"
* fooding 1..1 CodeableConcept "Question - Consume vegetables, fruits or barries" "Whether patient consumes daily vegetables, fruits or barries"
* medicationBloodPressure 1..1 CodeableConcept "Question - Medication for blood pressure" "Whether the patient has used drugs for high blood pressure"
* glycemyOrHbA1c 1..1 CodeableConcept "Question - Patient's history of high blood glucose" "Does the patient have a history of high blood glucose"
* familyHistory 1..1 CodeableConcept "Question - Patient's family history of diabetes" "Does the patient's family have a history of diabetes"
* remark 0..* CodeableConcept "Possible remarks" "Possible remarks"