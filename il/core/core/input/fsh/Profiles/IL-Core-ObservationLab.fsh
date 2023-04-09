Profile: ILCoreObservationLab
Parent: ILCoreObservation
Id: il-core-observation-lab
Title: "ILCore Observation Lab Profile"
Description: "Israel Core proposed constraints and extensions on the ILCoreObservation Resource for laboratory observations"

* ^url = $ILObservationLab
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Observation Lab Profile"
* . ^definition = "Definitions for the profile ILCoreObservationLabcd resource profile."
* . ^isModifier = false

* code and dataAbsentReason and status and specimen and effectiveDateTime and valueQuantity and valueCodeableConcept and valueString MS
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains 
    il-core 1..1
* category[il-core].coding = $sct#108252007 "Laboratory procedure (procedure)"
* code.coding 1..*
* code.coding ^binding.strength = #required
* subject 1..1
* performer 1..* // ask community if there are reasons why this is a problem
// add slicing for performer - 2 levels: organization can also be sub organization), lab worker
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period   // 
// * valueString obeys // invariant: WARNING this is meant for historic information only and is highly discorraged for future use
// add a remark to the community that value might become more restrictive in the future
* valueCodeableConcept ^binding.strength = #required
* component.valueCodeableConcept ^binding.strength = #required