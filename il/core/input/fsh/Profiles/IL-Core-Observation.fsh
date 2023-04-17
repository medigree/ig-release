Profile: ILCoreObservation
Parent: Observation
Id: il-core-observation
Title: "ILCore Observation Profile"
Description: "Israel Core proposed constraints and extensions on the Observation Resource"

* ^url = $ILObservation
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Observation Profile"
* . ^definition = "Definitions for the profile-Observation resource profile."
* . ^isModifier = false

* status and category and code and subject and value[x] MS
* basedOn only Reference(CarePlan or DeviceRequest or ImmunizationRecommendation or ILCoreMedicationRequest or NutritionOrder or ILCoreServiceRequest)
* partOf only Reference(MedicationAdministration or MedicationDispense or ILCoreProcedure or ILCoreImmunization or ILCoreImagingStudy)
* code from $vs-il-core-observation-code (preferred)
* subject only Reference(ILCorePatient or ILCoreGroup or ILCoreDevice or ILCoreLocation) 
* encounter only Reference(ILCoreEncounter)
* performer only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization or CareTeam or ILCorePatient or ILCoreRelatedPerson)
* valueQuantity obeys il-obs-ucum
* valueCodeableConcept from $vs-il-core-observation-value (preferred)
* valueCodeableConcept obeys il-obs-value-cc
* bodySite ^binding.strength = #preferred
* method ^binding.strength = #preferred
* specimen only Reference(ILCoreSpecimen)
* device only Reference(ILCoreDevice or DeviceMetric)
* referenceRange.low obeys il-obs-ucum
* referenceRange.high obeys il-obs-ucum
* referenceRange.age.low from $age-units
* referenceRange.age.high from $age-units
* hasMember only Reference(ILCoreObservation or ILCoreQuestionnaireResponse or MolecularSequence)
* derivedFrom only Reference(ILCoreDocumentReference or ILCoreImagingStudy or ILCoreMedia or ILCoreQuestionnaireResponse or ILCoreObservation or MolecularSequence)
* dataAbsentReason.coding ^slicing.discriminator.type = #value
* dataAbsentReason.coding ^slicing.discriminator.path = "system"
* dataAbsentReason.coding ^slicing.rules = #open
* dataAbsentReason.coding contains 
    not-performed-reason 0..1
* dataAbsentReason.coding[not-performed-reason] from $vs-not-performed-reason (required)
* dataAbsentReason obeys il-obs-not-performed
* component.code from $vs-il-core-observation-code (preferred)
* component.valueQuantity obeys il-obs-ucum
* component.valueCodeableConcept from $vs-il-core-observation-value (preferred)
* component.valueCodeableConcept obeys il-obs-value-cc
* component.referenceRange.low obeys il-obs-ucum
* component.referenceRange.high obeys il-obs-ucum
* component.referenceRange.age.low from $age-units
* component.referenceRange.age.high from $age-units