Profile: ILCoreImmunizationReactionObservation
Parent: Observation
Id: il-core-immunization-reaction-observation
Title: "ILCore ImmunizationReactionObservation Profile"
Description: "Israel Core proposed constraints and extensions on the ImmunizationReactionObservation Resource"

* ^url = $ILImmunizationReactionObs
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2022-05-16"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore ImmunizationReactionObservation Profile"
* . ^definition = "Definitions for the profile-ImmunizationReactionObservation resource profile."
* . ^isModifier = false

* partOf only Reference(ILCoreImmunization) 
* code.coding 1..1
* code.coding.system 1..1
* code.coding.system = $loinc (exactly)
* code.coding.code 1..1
* code.coding.code = #31044-1 (exactly)
* subject 1..1
* subject only Reference(ILCorePatient)
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from $vs-immunization-side-effects (extensible)  // doesn't exist yet
* bodySite from $bodySite (preferred)
