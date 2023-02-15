Instance: rs-findRisc-patient
InstanceOf: Patient
Title: "Example - FINDRISC Test Patient "
Description: "Test Patient"
Usage: #example
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.extension.url = "http://hl7.org/fhir/StructureDefinition/language"
* extension[=].valueAddress.extension.valueCode = #nl
* extension[=].valueAddress.city = "Namen"
* extension[=].valueAddress.country = "BE"
* extension[+].extension.url = "code"
* extension[=].extension.valueCodeableConcept = $cd-fed-country#BE "Belgium"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/patient-nationality"
* identifier.use = #official
* identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* identifier.value = "99010100118"
* active = true
* name.use = #official
* name.family = "Test"
* name.given[0] = "Patient"
* name.given[+] = "Abrumet"
* gender = #female