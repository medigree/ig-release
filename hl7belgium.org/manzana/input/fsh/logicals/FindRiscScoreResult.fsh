Logical: FindRiscScoreResult
Parent: Element
Id: model-findRisc-scoreResult
Description: "This is the logical model of the patient's score results calculated from the FINDRISC survey answers."
* ^version = "0.2.0"
* ^status = #draft
* ^date = "2022-06-24T14:28:28+02:00"
* ^publisher = "HL7 Belgium"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://example.com"
* ^type = "FindRiscScoreResult"
* ^jurisdiction.coding = urn:iso:std:iso:3166#BE
* recordDate 1..1 http://hl7.org/fhir/StructureDefinition/dateTime "The date when the score result is recorded" "The date when the score result is recorded"
* evaluationDate 1..1 http://hl7.org/fhir/StructureDefinition/dateTime "The date of the evaluation" "The date of the evaluation"
* recorder 1..1 Reference(https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner) "Person that performed the recording of the screening" "It is the unique identifier of the healthcare professional who encodes the information and takes responsibility for its content. The unique identifier schould be the National professional Registry Number (NISS), but in some cases, another unique identifier (NISS Bis) maybe authorized. Reference to the Practitioner for administrative information on the care provide (Reference)"
* patient 1..1 Reference(https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient) "The person being screened" " The unique patient identifier. The unique identifier should be the National Patient Registry Number (NISS) but in some cases another unique identifier maybe allowed. Reference to the Patient for administrative information about the patient (Reference)"
* category 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Classification of type of the observation (Observation Category)" "Classification of type of the observation (Observation Category) (Ref. screening tool or questionnaire)"
* resultCode 1..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "The final result of the FINDRISC evaluation" "The final result of the FINDRISC evaluation. The code will be the same regardless the evaluation scale used"
* bodylocalisation 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Indicate the location of the patient's body where the observation is made" "Indicate the location of the patient's body where the observation is made"
* bodylocalisation.bodyLaterality 0..1 http://hl7.org/fhir/StructureDefinition/CodeableConcept "Specify the laterality of the body where there observation is made" "Specify the laterality of the body where the observation is made (ref BodySite FHIR)."
* value[x] 1..1 integer "Final Score of the Evaluation Scale" "The value of the final score of the FINDRISC evaluation that evaluates the risk for the patient to develop diabetes type 2. For FindRisc Evaluation, the value of the final score must be between 0 and 26. The final result is thus a number. The range depends of the scale evaluation used"
* referenceRange 0..* BackboneElement "Provides guide for interpretation of the screening result" "Guidance on how to interpret the value by comparison to a normal/recommended range. Multiple ranges are interpreted as an 'OR', in other words, to represent two distinct target polulations, two 'referenceRange' elements would be used. Knowing what values are considered 'normal' can help evaluate the significance of a particular result. In case of FindRisc, there are 5 ranges: low=0,high=3,resultType=Very Low |low=4, high=8, resultType=Low | low=9, high=12, resultType=Moderate | low=13, high=20, resultType=High | low=21, high=26, resultType=Very High"
* referenceRange.low 0..1 integer "Text based reference range in an observation" "Text based reference range in an observation"
* referenceRange.high 0..1 integer "Text based reference range in an observation" "Text based reference range in an observation"
* referenceRange.resultType 0..1 string "Text based reference range in an observation" "The range that is evaluated from the high/low ranges"
* derivedFrom 0..1 Reference(https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner) "The score result is derived from the performer" "Related measurements the result score is performed from (Reference)"
* conclusion 0..1 CodeableConcept "An interpretation to help the patient understanding of the result" "Text based interpretation in an observation"
* remark 0..1 string "Text based recommendation of the practitionner" "Text based recommendation of the practitionner"