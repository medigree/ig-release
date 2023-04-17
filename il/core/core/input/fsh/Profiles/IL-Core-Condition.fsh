Profile: ILCoreCondition
Parent: Condition
Id: il-core-condition
Title: "ILCore Condition Profile"
Description: "Israel Core proposed constraints and extensions on the Condition Resource"

* ^url = $ILCondition
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2022-02-07"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Condition Profile"
* . ^definition = "Definitions for the profile-Condition resource profile."
* . ^isModifier = false

* clinicalStatus MS
* verificationStatus MS
* category 1..* MS
* category from $vs-il-core-condition-category (extensible)
* category ^example.valueCodeableConcept = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category ^example.label = "Valid Example"
* code 1..1 MS
* code from $vs-il-core-condition-code (extensible)
* code obeys il-condition-sct 
* code ^example.valueCodeableConcept = $sct#39065001 "Burn of ear"
* code ^example.label = "Valid Example"
* subject 1..1 MS
* subject only Reference(ILCorePatient or ILCoreGroup)
* encounter only Reference(ILCoreEncounter)
* recorder only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCorePatient or ILCoreRelatedPerson)
* asserter only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCorePatient or ILCoreRelatedPerson)
* stage.assessment only Reference(ClinicalImpression or ILCoreDiagnosticReport or ILCoreObservation)
* bodySite ^example.valueCodeableConcept = $sct#49521004 "Left external ear structure"
* bodySite ^example.label = "Valid Example"
