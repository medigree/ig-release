Profile: ILCoreLocation
Parent: Location
Id: il-core-location
Title: "ILCore Location Profile"
Description: "Israel Core proposed constraints and extensions on the Location Resource"

* ^url = $ILLocation
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-03-21"
* ^publisher = "Israeli Ministry of Health"
* . ^short = "Israel Core Location Profile"
* . ^definition = "The Location Profile is based upon the core FHIR Location Resource"
* . ^isModifier = false
* . obeys il-location-mode

* status 0..1 MS
* name 1..1 MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* telecom.use 0..1 MS
* address only ILCoreAddress
* address 0..1 MS
* address.extension[geolocation] 0..0
* managingOrganization only Reference(ILCoreOrganization)
* partOf only Reference(ILCoreLocation)
