// IL-Core Invariants file
// File by Amos "Kippi" Bordowitz, Mar-07-2022

Invariant: mikud-chk
Description: "Israeli postal code must be 5 OR 7 digits."
Severity: #error
Expression: 
"(country='IL' or country='ISL' or country='376' or country.empty()) implies postalCode.matches('^([0-9]{5}|[0-9]{7})$')"

Invariant: il-condition-sct
Description: "Condition.code.coding SHOULD contain a SNOMED-CT code. Other code systems included in the ValueSet are for historical purposes only"
Severity: #warning
Expression: 
"coding.where(system='http://snomed.info/sct' and code.exists()).exists()"  

Invariant: element-sct
Description: "Element.coding SHOULD contain a SNOMED-CT code. Other code systems included in the ValueSet are for historical purposes only"
Severity: #warning
Expression: 
"coding.where(system='http://snomed.info/sct' and code.exists()).exists()"  

Invariant: nine-digits-chk
Description: "All legal entities must have a 9 digit identifier"
Severity: #error
Expression: 
"matches('[0-9]{9}')"

Invariant: il-id-chk
Description: "Israeli ID must be 9-digits with a correct check-digit at the end."
Severity: #error
Expression: 
"matches('[0-9]{9}') and
substring(8,1).toInteger()=
(10-((substring(0,1).toInteger() +
substring(1,1).toInteger()*2 mod 10 +
substring(1,1).toInteger()*2 div 10 +
substring(2,1).toInteger() +
substring(3,1).toInteger()*2 mod 10 +
substring(3,1).toInteger()*2 div 10 +
substring(4,1).toInteger() +
substring(5,1).toInteger()*2 mod 10 +
substring(5,1).toInteger()*2 div 10 +
substring(6,1).toInteger() +
substring(7,1).toInteger()*2 mod 10 +
substring(7,1).toInteger()*2 div 10) mod 10)) mod 10"

Invariant: il-procedure-sct
Description: "Procedure.code.coding SHOULD contain a SNOMED-CT code. Other code systems included in the ValueSet are for historical purposes only"
Expression: "code.coding.where(system='http://snomed.info/sct' and code.exists()).exists()"
Severity: #warning

Invariant: il-immunization-lot-number
Description: "Immunization.lotNumber SHALL have a value if Immunization.primarySource is TRUE."
Expression: "primarySource=true implies lotNumber.exists()"
Severity: #error

Invariant: il-location-mode
Description: "If Location.mode = 'instance', Location.position or Location.address SHALL have a value"
// Expression: "mode=kind or address.exists() or position.exists()"
Expression: "mode='instance' implies address.exists() or position.exists()"
Severity: #error

Invariant: il-organization-identifier
Description: "If not sub-organization (i.e - partOf), there SHALL be an identifier"
Expression: "partOf.empty() implies identifier.exists()"
Severity: #error

Invariant: il-patient-name
Description: "Either Patient.name.given and/or Patient.name.family SHALL be present or a Data Absent Reason Extension SHALL be present."
Expression: "(name.family.exists() or name.given.exists()) xor extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"
Severity: #error

Invariant: il-patient-name2
Description: "Either Patient.name.given and/or Patient.name.family SHALL be present or a Data Absent Reason Extension SHALL be present."
Expression: "family.exists() or given.exists()) xor extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"
Severity: #error

Invariant: identifier-dash
Description: "identifier.value in this slice SHALL have a number, followed by a hyphen (\"-\") and followed by another number"
Expression: "matches('^[0-9]+(-[0-9]+)$')"
Severity: #error

Invariant: identifier-digits
Description: "identifier.value in this slice SHALL be a number with digits only"
Expression: "matches('^[0-9]*$')"
Severity: #error

Invariant: il-obs-ucum
Description: "SHOULD use UCUM for coded quantity units"
Expression: "system.empty() or system = 'http://unitsofmeasure.org'"
Severity: #warning

Invariant: il-obs-value-cc
Description: "SHOULD use SNOMED-CT or LOINC Answers for coded results"
Expression: "coding.where(system='http://snomed.info/sct' and code.exists()).exists() OR coding.where(system='http://loinc.org' and code.startsWith('LA')).exists()"
Severity: #warning

Invariant: il-obs-not-performed
Description: "dataAbsentReason - if an IL-Core 'not-performed-reason' code is supplied, 'not performed' code MUST be supplied as well"
Expression: "coding.where(system='http://fhir.health.gov.il/cs/il-core-not-performed-reason').exists() implies coding.where(system='http://terminology.hl7.org/CodeSystem/data-absent-reason' and code='not-preformed').exists()"
Severity: #error

Invariant: il-obs-lab-value
Description: "If value is empty, there SHOULD be references in hasMember"
Expression: "value.empty() implies hasMember.exists()"
Severity: #warning


// TEMP ////////////////////////
Invariant: us-core-6
Description: "DocumentReference.content.attachment.url or DocumentReference.content.attachment.data or both SHALL be present."
Severity: #error
Expression: "url.exists() or data.exists()"
XPath: "f:url or f:content"



// Invariant: il-organization-type
// Description: "If Organization.type is of type 'moh-institute-type', Organization.identifier.system MUST be http://institutions.health.gov.il/Institutions "
// Expression: "identifier.exists().where(system='http://institutions.health.gov.il/Institutions') and type.exists() implies type.exists().where(coding.exists())"
// Severity: #error

//  Invariant: ppn-uri
// Description: "Must be 'http://hl7.org/fhir/sid/passport-[XXX]' [XXX] is a 3-letter country code defined by ISO 3166. See [Using ISO 3166 Codes with FHIR](iso3166.html)"
// Severity: #error
// Expression: "startsWith('http://hl7.org/fhir/sid/passport-[XXX]')"
