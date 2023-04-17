Alias: $sct-body-strct = http://hl7.org/fhir/ValueSet/body-site

Profile: ILCoreProcedure
Parent: Procedure
Id: il-core-procedure
Title: "ILCore Procedure Profile"
Description: "Israel Core proposed constraints and extensions on the Procedure Resource"

* ^url = $ILProcedure
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Procedure Profile"
* . ^definition = "Definitions for the profile-Procedure resource profile."
* . ^isModifier = false

* status MS
* code 1..1 MS
* code from $vs-il-core-procedure-code (extensible)
* code obeys il-procedure-sct
* code ^example.valueCodeableConcept = $sct#71388002 "Procedure (procedure)"
* code ^example.label = "Valid Example"
* basedOn only Reference(CarePlan or ILCoreServiceRequest)
* partOf only Reference(ILCoreProcedure or ILCoreObservation or MedicationAdministration)
* subject MS
* subject only Reference(ILCorePatient or ILCoreGroup)
* encounter only Reference(ILCoreEncounter)
* performed[x] 1..1 MS
* performedDateTime MS
* performedDateTime.extension contains $relative-date named relative-date 0..1
* performedDateTime.extension[relative-date] ^short = "Extension: Relative Date Criteria"
* performedDateTime.extension[relative-date] ^definition = "Specifies that a date is relative to some event. The event happens [Duration] after [Event]."
* recorder only Reference(ILCorePatient or ILCoreRelatedPerson or ILCorePractitioner or ILCorePractitionerRole)
* asserter only Reference(ILCorePatient or ILCoreRelatedPerson or ILCorePractitioner or ILCorePractitionerRole)
* performer.actor only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization or ILCorePatient or ILCoreRelatedPerson or ILCoreDevice)
* performer.onBehalfOf only Reference(ILCoreOrganization)
* location only Reference(ILCoreLocation)
* reasonReference only Reference(ILCoreCondition or ILCoreObservation or ILCoreProcedure or ILCoreDiagnosticReport or DocumentReference)
* reasonCode from $vs-il-core-procedure-reason
* bodySite from $sct-body-strct (extensible)
* bodySite ^example.valueCodeableConcept = $sct#344001 "Ankle"
* bodySite ^example.label = "Valid Example"
* report only Reference(ILCoreDiagnosticReport or DocumentReference or Composition)
* complicationDetail only Reference(ILCoreCondition)
* complication from $vs-il-core-condition-code (extensible)
* complication ^example.valueCodeableConcept = $sct#131148009 "Bleeding (finding)"
* complication ^example.label = "Valid Example"
* focalDevice.manipulated only Reference(ILCoreDevice)
* usedReference only Reference(ILCoreDevice or ILCoreMedication or Substance)