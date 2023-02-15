Instance: rs-findRisc-questionnaire
InstanceOf: Questionnaire
Title: "Questionnaire - FINDRISC screening questionnaire instance"
Description: "The questionnaire instance for FINDRISC screening"
Usage: #definition
* url = "http://hl7belgium.org/profiles/fhir/manzana/Questionnaire/rs-findRisc-questionnaire"
* version = "0.2.0"
* name = "rs-findRisc-questionnaire"
* status = #draft
* date = "2020-09-23T02:57:56+00:00"
* publisher = "HL7 Belgium"
* contact.telecom.system = #url
* contact.telecom.value = "http://example.com"
* jurisdiction = $m49.htm#056
* item[0].linkId = "patientAge"
* item[=].definition = "PatientAge"
* item[=].code = $sct#105727008
* item[=].text = "Please specify the patient's age?"
* item[=].type = #open-choice
* item[=].required = true
* item[=].answerValueSet = "http://hl7belgium.org/profiles/fhir/manzana/ValueSet/vs-findRisc-screening-age"
* item[+].linkId = "bmi"
* item[=].definition = "PatientBMI"
* item[=].code = $sct#60621009
* item[=].text = "Please specify the patient's BMI (Kg/m²)?"
* item[=].type = #open-choice
* item[=].required = true
* item[=].answerValueSet = "http://hl7belgium.org/profiles/fhir/manzana/ValueSet/vs-findRisc-screening-bmi"
* item[+].linkId = "waistCircumference"
* item[=].definition = "PatientWaistCircumference"
* item[=].code = $sct#276361009
* item[=].text = "Please specify the patient's waist circumference?"
* item[=].type = #open-choice
* item[=].required = true
* item[=].answerValueSet = "http://hl7belgium.org/profiles/fhir/manzana/ValueSet/vs-findRisc-screening-waistCircumference"
* item[+].linkId = "medication-highBloodPressure"
* item[=].definition = "MedicationHighBloodPressure"
* item[=].code = $sct#276361009
* item[=].text = "Has the patient ever used drugs for high blood pressure?"
* item[=].type = #open-choice
* item[=].required = true
* item[=].answerValueSet = "http://hl7belgium.org/profiles/fhir/manzana/ValueSet/vs-findRisc-screening-medicationHBP"
* item[+].linkId = "history-highBloodGlucose"
* item[=].definition = "HistoryHighBloodGlucose"
* item[=].code = $sct#80394007
* item[=].text = "Does the customer have a history of high blood glucose??"
* item[=].type = #open-choice
* item[=].required = true
* item[=].answerValueSet = "http://hl7belgium.org/profiles/fhir/manzana/ValueSet/vs-findRisc-screening-hyperglycemia"
* item[+].linkId = "physical-activity"
* item[=].definition = "PhysicalActivity"
* item[=].code = $sct#68130003
* item[=].text = "How much physical activity does the patient do?"
* item[=].type = #open-choice
* item[=].required = true
* item[=].answerValueSet = "http://hl7belgium.org/profiles/fhir/manzana/ValueSet/vs-findRisc-screening-physicalActivity"
* item[+].linkId = "daily-consume-veg-fruit"
* item[=].definition = "ConsumeVegetablesFruitsBarries"
* item[=].code = $sct#391129005
* item[=].text = "Does the patient consume daily vegetables, fruits, or berries?"
* item[=].type = #open-choice
* item[=].required = true
* item[=].answerValueSet = "http://hl7belgium.org/profiles/fhir/manzana/ValueSet/vs-findRisc-screening-consumeVegFrBa"
* item[+].linkId = "family-history-diabetes"
* item[=].definition = "FamilyHistoryDiabetes"
* item[=].code = $sct#160303001
* item[=].text = "Does the patient's family have a history of diabetes?"
* item[=].type = #open-choice
* item[=].required = true
* item[=].answerValueSet = "http://hl7belgium.org/profiles/fhir/manzana/ValueSet/vs-findRisc-screening-familyHistoryDiabetes"