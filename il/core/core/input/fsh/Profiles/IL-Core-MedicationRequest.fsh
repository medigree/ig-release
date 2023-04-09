Profile: ILCoreMedicationRequest 
Parent: MedicationRequest 
Id: il-core-medication-request
Title: "ILCore MedicationRequest Profile"
Description: "Israel Core proposed constraints and extensions on the MedicationRequest  Resource"

* ^url = $ILMedicationRequest 
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore MedicationRequest  Profile"
* . ^definition = "Definitions for the profile-MedicationRequest  resource profile."
* . ^isModifier = false

* extension contains
   ext-recorded-time named recorded 0..1 and
   ext-narcotic-medication named narcotic 0..1  
* extension[recorded] ^short = "Ext: Recorded Time"
* extension[recorded] ^definition = "Extension: The time in whitch an event was recorded"
* extension[narcotic] ^short = "Ext: Narcotic Medication"
* extension[narcotic] ^definition = "Extension: Noting if a medication is narcotic or not"

* status and intent and medicationReference and subject and authoredOn and requester and dosageInstruction MS
* status 1..1
* intent 1..1
* category from $vs-il-core-medication-request-category (extensible)
* reportedReference only Reference(ILCorePatient or ILCorePractitioner or ILCorePractitionerRole or ILCoreRelatedPerson or ILCoreOrganization)
* medicationReference only Reference(ILCoreMedication)
* medicationReference 1..1
* subject only Reference(ILCorePatient or ILCoreGroup) 
* encounter only Reference(ILCoreEncounter)
* requester 1..1
* requester only Reference(ILCorePatient or ILCorePractitioner or ILCorePractitionerRole or ILCoreRelatedPerson or ILCoreOrganization or ILCoreDevice)
* basedOn only Reference(CarePlan or ILCoreMedicationRequest or ILCoreServiceRequest or ImmunizationRecommendation)
* courseOfTherapyType from $vs-il-core-medication-request-course-of-therapy (extensible)
// * insurance only (ILCoreClaimResponse or ILCoreCoverage) // none of these exist yet - march-08-23
* substitution.allowed[x] from http://terminology.hl7.org/ValueSet/v3-ActSubstanceAdminSubstitutionCode
* substitution.reason from http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason
* dosageInstruction only ILCoreDosage



// * requester only Reference(ILCorePatient or ILCorePractitioner or ILCorePractitionerRole or ILCoreRelatedPerson or ILCoreOrganization or ILCoreDevice)
// * performer only Reference(ILCorePatient or ILCorePractitioner or ILCorePractitionerRole or ILCoreRelatedPerson or ILCoreOrganization or ILCoreDevice or CareTeam)
// * recorder only Reference(ILCorePractitioner or ILCorePractitionerRole)
// * basedOn only Reference(CarePlan or ILCoreMedicationRequest or ILCoreServiceRequest or ImmunizationRecommendation)
// // * dispenseRequest.dispenser only Reference(ILCoreOrganization) // will be relevant next FHIR vesrion
// * priorPrescription only Reference(ILCoreMedicationRequest)

// * medication[x] only CodeableConcept or Reference(ILCoreMedication)
// * medication[x] ^short = "Medication to be taken"
// * medication[x] ^definition = "Identifies the medication being requested. This is a link to a resource that represents the medication which may be the details of the medication or simply an attribute carrying a code that identifies the medication from a known list of medications."
// * medication[x] ^comment = "If only a code is specified, then it needs to be a code for a specific product. If more information is required, then the use of the Medication resource is recommended.  For example, if you require form or lot number or if the medication is compounded or extemporaneously prepared, then you must reference the Medication resource."

// * medicationCodeableConcept.coding ^slicing.discriminator[0].type = #value
// * medicationCodeableConcept.coding ^slicing.discriminator[0].path = "system"
// * medicationCodeableConcept.coding ^slicing.rules = #open
// * medicationCodeableConcept.coding contains
//    snomed 0..* and
//    yarpa 0..* 
// * medicationCodeableConcept.coding[snomed].system 1..1
// * medicationCodeableConcept.coding[snomed].system = "http://snomed.info/sct" (exactly)
// * medicationCodeableConcept.coding[snomed].code 1..1
// * medicationCodeableConcept.coding[snomed].code from SNOMEDCTMedicationCodes
// * medicationCodeableConcept.coding[snomed].code ^example.valueCodeableConcept = $sct#775161003 "Product containing only chloramphenicol and hydrocortisone (medicinal product)"
// * medicationCodeableConcept.coding[snomed].code ^example.label = "Valid Example"
// * medicationCodeableConcept.coding[yarpa].system 1..1
// * medicationCodeableConcept.coding[yarpa].system = "http://yarpa.co.il/catalog" (exactly)
// * medicationCodeableConcept.coding[yarpa].code 1..1
// * medicationCodeableConcept.coding[yarpa].code from $vs-yarpa-medication-code
// * medicationCodeableConcept.coding[yarpa].code ^example.valueCodeableConcept = $yarpa-medication-code#20288 "AMPHO-MORONAL 10MG 20TAB"
// * medicationCodeableConcept.coding[yarpa].code ^example.label = "Valid Example"

// * dispenseRequest.quantity from http://hl7.org/fhir/ValueSet/ucum-units //this is for testing puposes only!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
