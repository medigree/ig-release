Profile: ILCoreClaim
Parent: Claim
Id: il-core-claim
Title: "ILCore Claim Profile"
Description: "Israel Core proposed constraints and extensions on the Claim Resource"

* ^url = $ILClaim
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Claim Profile"
* . ^definition = "Definitions for the profile-Claim resource profile."
* . ^isModifier = false

* patient only Reference(ILCorePatient) 
* enterer only Reference(ILCorePractitioner or ILCorePractitionerRole)
* insurer only Reference(ILCoreOrganization)
* provider only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization)
* related.claim only Reference(ILCoreClaim)
* prescription only Reference(DeviceRequest or ILCoreMedicationRequest or VisionPrescription)
* originalPrescription only Reference(DeviceRequest or ILCoreMedicationRequest or VisionPrescription)
* payee.party only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization or ILCorePatient or ILCoreRelatedPerson)
* referral only Reference(ILCoreServiceRequest)
* facility only Reference(ILCoreLocation)
* careTeam.provider only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization)
* diagnosis.diagnosisReference only Reference(ILCoreCondition)
* procedure.procedureReference only Reference(ILCoreProcedure)
* procedure.udi only Reference(ILCoreDevice)
* accident.locationReference only Reference(ILCoreLocation)
* item.locationReference only Reference(ILCoreLocation)
* item.udi only Reference(ILCoreDevice)
* item.encounter only Reference(ILCoreEncounter)
* item.detail.udi only Reference(ILCoreDevice)
* item.detail.subDetail.udi only Reference(ILCoreDevice)
