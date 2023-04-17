Profile: ILCoreDevice
Parent: Device
Id: il-core-device
Title: "ILCore Device Profile"
Description: "Israel Core proposed constraints and extensions on the Device Resource"

* ^url = $ILDevice
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Device Profile"
* . ^definition = "Definitions for the profile-Device resource profile."
* . ^isModifier = false

* definition only Reference(ILCoreDeviceDefinition)
* patient only Reference(ILCorePatient) 
* owner only Reference(ILCoreOrganization)
* location only Reference(ILCoreLocation)
* parent only Reference(ILCoreDevice)

