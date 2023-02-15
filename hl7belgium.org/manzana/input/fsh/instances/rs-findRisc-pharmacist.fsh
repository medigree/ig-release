Instance: rs-findRisc-pharmacist
InstanceOf: Practitioner
Title: "Example - FINDRISC Test pharmacist "
Description: "Test pharmacist"
Usage: #example
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"
* identifier[0].use = #official
* identifier[=].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* identifier[=].value = "99010102393"
* identifier[+].use = #official
* identifier[=].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* identifier[=].value = "10615263004"
* name.use = #official
* name.family = "Pharmacist"
* name.given = "Test"
* name.suffix = "MD"
* gender = #female
* birthDate = "1979-12-11"