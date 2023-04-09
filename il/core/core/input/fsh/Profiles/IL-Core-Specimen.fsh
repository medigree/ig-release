Profile: ILCoreSpecimen
Parent: Specimen
Id: il-core-specimen
Title: "ILCore Specimen Profile"
Description: "Israel Core proposed constraints and extensions on the Specimen Resource"

* ^url = $ILSpecimen
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Specimen Profile"
* . ^definition = "Definitions for the profile-Specimen resource profile."
* . ^isModifier = false

* subject only Reference(ILCorePatient or ILCoreGroup or ILCoreDevice or Substance or ILCoreLocation)
* parent only Reference(ILCoreSpecimen)
* request only Reference(ILCoreServiceRequest)
* collection.collector only Reference(ILCorePractitioner or ILCorePractitionerRole)
