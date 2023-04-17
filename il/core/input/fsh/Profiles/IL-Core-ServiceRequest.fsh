Profile: ILCoreServiceRequest
Parent: ServiceRequest
Id: il-core-service-request
Title: "ILCore ServiceRequest Profile"
Description: "Israel Core proposed constraints and extensions on the ServiceRequest Resource"

* ^url = $ILServiceRequest
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"
* . ^short = "ILCore ServiceRequest Profile"
* . ^definition = "Definitions for the profile-ServiceRequest resource profile."
* . ^isModifier = false

* status and intent and category and code and subject and occurrence[x] and occurrenceDateTime and occurrencePeriod and authoredOn and requester and reasonCode MS
* basedOn only Reference(CarePlan or ILCoreServiceRequest or ILCoreMedicationRequest)
* replaces only Reference(ILCoreServiceRequest)
* category 1..*
* category.coding
* category.coding from $vs-il-core-service-category (extensible)
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains 
    il-core 0..*
* category[il-core].coding
  * system 1..1
  * system = $sct
  * code 1..1
  * display 1..1
* category[il-core].coding from $vs-il-core-service-category (required)
* code 1..1
* code from $vs-il-core-procedure-code (extensible)
* subject only Reference(ILCorePatient or ILCoreGroup or ILCoreLocation or ILCoreDevice)
* encounter only Reference(ILCoreEncounter)
* occurrenceDateTime.extension contains $relative-date named relative-date 0..1
* occurrenceDateTime.extension[relative-date] ^short = "Extension: Relative Date Criteria"
* occurrenceDateTime.extension[relative-date] ^definition = "Specifies that a date is relative to some event. The event happens [Duration] after [Event]."
* requester only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization or ILCorePatient or ILCoreRelatedPerson or ILCoreDevice)
* performer only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization or CareTeam or HealthcareService or ILCorePatient or ILCoreDevice or ILCoreRelatedPerson)
* locationReference only Reference(ILCoreLocation)
* reasonCode from $vs-il-core-procedure-reason (extensible)
* reasonReference only Reference(ILCoreCondition or ILCoreObservation or ILCoreDiagnosticReport or DocumentReference)
* specimen only Reference(ILCoreSpecimen)