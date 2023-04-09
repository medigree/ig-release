Profile: ILCoreDiagnosticReport
Parent: DiagnosticReport
Id: il-core-diagnostic-report
Title: "ILCore DiagnosticReport Profile"
Description: "Israel Core proposed constraints and extensions on the DiagnosticReport Resource"

* ^url = $ILDiagnosticReport
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore DiagnosticReport Profile"
* . ^definition = "Definitions for the profile-DiagnosticReport resource profile."
* . ^isModifier = false

* basedOn only Reference(CarePlan or ImmunizationRecommendation or ILCoreMedicationRequest or NutritionOrder or ILCoreServiceRequest)
* subject only Reference(ILCorePatient or ILCoreGroup or ILCoreDevice or ILCoreLocation)
* encounter only Reference(ILCoreEncounter)
* performer only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization or CareTeam)
* resultsInterpreter only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization or CareTeam)
* specimen only Reference(ILCoreSpecimen)
* result only Reference(ILCoreObservation)
* imagingStudy only Reference(ILCoreImagingStudy)
* media.link only Reference(ILCoreMedia)
