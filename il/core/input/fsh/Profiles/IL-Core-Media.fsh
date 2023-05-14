Profile: ILCoreMedia
Parent: Media
Id: il-core-media
Title: "ILCore Media Profile"
Description: "Israel Core proposed constraints and extensions on the Media Resource"

* ^url = $ILMedia
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Media Profile"
* . ^definition = "Definitions for the profile-Media resource profile."
* . ^isModifier = false

* basedOn only Reference(ILCoreServiceRequest or CarePlan)
* subject only Reference(ILCorePatient or ILCorePractitioner or ILCorePractitionerRole or ILCoreGroup or ILCoreDevice or ILCoreSpecimen or ILCoreLocation) 
* encounter only Reference(ILCoreEncounter)
* operator only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization or CareTeam or ILCorePatient or ILCoreDevice or ILCoreRelatedPerson)
* device only Reference(ILCoreDevice or DeviceMetric)
