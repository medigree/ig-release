Profile: ILCoreImagingStudy
Parent: ImagingStudy
Id: il-core-imaging-study
Title: "ILCore ImagingStudy Profile"
Description: "Israel Core proposed constraints and extensions on the ImagingStudy Resource"

* ^url = $ILImagingStudy
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "Israel Core ImagingStudy Profile"
* . ^definition = "Definitions for the profile-ImagingStudy resource profile."
* . ^isModifier = false

* subject only Reference(ILCorePatient or ILCoreDevice or ILCoreGroup)
* encounter only Reference(ILCoreEncounter)
* basedOn only Reference(CarePlan or ILCoreServiceRequest or Appointment or AppointmentResponse or Task)
* referrer only Reference(ILCorePractitioner or ILCorePractitionerRole)
* interpreter only Reference(ILCorePractitioner or ILCorePractitionerRole)
* procedureReference only Reference(ILCoreProcedure)
* location only Reference(ILCoreLocation)
* reasonReference only Reference(ILCoreCondition or ILCoreObservation or ILCoreMedia or ILCoreDiagnosticReport or DocumentReference)
* series.specimen only Reference(ILCoreSpecimen)
* series.performer.actor only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization or CareTeam or ILCorePatient or ILCoreDevice or ILCoreRelatedPerson)
