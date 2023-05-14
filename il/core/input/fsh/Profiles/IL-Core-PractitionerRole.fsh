Profile: ILCorePractitionerRole
Parent: PractitionerRole
Id: il-core-practitioner-role
Title: "ILCore PractitionerRole Profile"
Description: "Israel Core proposed constraints and extensions on the PractitionerRole Resource"

* ^url = $ILPractitionerRole
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-03-22"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore PractitionerRole Profile"
* . ^definition = "Definitions for the profile-practitionerrole resource profile."
* . ^isModifier = false

* practitioner only Reference(ILCorePractitioner)
* organization only Reference(ILCoreOrganization)

//telecom
* telecom 0..* MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS

//location 
* location only Reference(ILCoreLocation)  // how do we add cardinality?

