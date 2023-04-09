Profile: ILCoreEncounter
Parent: Encounter
Id: il-core-encounter
Title: "ILCore Encounter Profile"
Description: "Israel Core proposed constraints and extensions on the Encounter Resource"

* ^url = $ILEncounter
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Encounter Profile"
* . ^definition = "Definitions for the profile-Encounter resource profile."
* . ^isModifier = false

* subject only Reference(ILCorePatient or ILCoreGroup)
* basedOn only Reference(ILCoreServiceRequest)
* participant.individual only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreRelatedPerson)
* reasonReference only Reference(ILCoreCondition or ILCoreProcedure or ILCoreObservation or ImmunizationRecommendation)
* diagnosis.condition only Reference(ILCoreCondition or ILCoreProcedure)
* hospitalization.origin only Reference(ILCoreLocation or ILCoreOrganization)
* hospitalization.destination only Reference(ILCoreLocation or ILCoreOrganization)
* location.location only Reference(ILCoreLocation)
* serviceProvider only Reference(ILCoreOrganization)
* partOf only Reference(ILCoreEncounter)
