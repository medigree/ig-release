Profile: ILCoreFamilyMemberHistory
Parent: FamilyMemberHistory
Id: il-core-family-member-history
Title: "ILCore FamilyMemberHistory Profile"
Description: "Israel Core proposed constraints and extensions on theILCoreFamilyMemberHistory Resource"

* ^url = $ILFamilyMemberHistory
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore FamilyMemberHistory Profile"
* . ^definition = "Definitions for the profile-FamilyMemberHistory resource profile."
* . ^isModifier = false

* patient only Reference(ILCorePatient)
* reasonReference only Reference(ILCoreCondition or ILCoreObservation or ILCoreAllergyIntolerance or ILCoreQuestionnaireResponse or ILCoreDiagnosticReport or DocumentReference)
