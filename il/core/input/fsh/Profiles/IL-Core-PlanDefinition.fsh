Profile: ILCorePlanDefinition
Parent: PlanDefinition
Id: il-core-plan-definition
Title: "ILCore PlanDefinition Profile"
Description: "Israel Core proposed constraints and extensions on the PlanDefinition Resource"

* ^url = $ILPlanDefinition
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2022-07-13"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore PlanDefinition Profile"
* . ^definition = "Definitions for the profile-PlanDefinition resource profile."
* . ^isModifier = false

* subjectReference only Reference(ILCoreGroup)
* action.definitionCanonical only Canonical(ActivityDefinition or ILCorePlanDefinition or Questionnaire)