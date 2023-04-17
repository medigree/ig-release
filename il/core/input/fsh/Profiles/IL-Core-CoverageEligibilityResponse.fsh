Profile: ILCoreCoverageEligibilityResponse
Parent: CoverageEligibilityResponse
Id: il-core-coverage-eligibility-response
Title: "ILCore CoverageEligibilityResponse Profile"
Description: "Israel Core proposed constraints and extensions on the CoverageEligibilityResponse Resource"

* ^url = $ILCoverageEligibilityResponse
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore CoverageEligibilityResponse Profile"
* . ^definition = "Definitions for the profile-CoverageEligibilityResponse resource profile."
* . ^isModifier = false

* patient only Reference(ILCorePatient) 
* requestor only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization)
* request only Reference(ILCoreCoverageEligibilityRequest)
* insurer only Reference(ILCoreOrganization)
* insurance.item.provider only Reference(ILCorePractitioner or ILCorePractitionerRole)
