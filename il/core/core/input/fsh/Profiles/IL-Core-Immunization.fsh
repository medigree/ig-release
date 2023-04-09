Alias: $route = http://hl7.org/fhir/ValueSet/immunization-route

Profile: ILCoreImmunization
Parent: Immunization
Id: il-core-immunization
Title: "ILCore Immunization Profile"
Description: "Israel Core proposed constraints and extensions on the Immunization Resource"

* ^url = $ILImmunization
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2022-05-16"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Immunization Profile"
* . ^definition = "Definitions for the profile-Immunization resource profile."
* . ^isModifier = false
* . obeys il-immunization-lot-number
* status 1..1 MS
* statusReason MS
* statusReason from $vs-reason-not-done (extensible)
* statusReason ^example.valueCodeableConcept = $sct#310376006 "Immunization consent not given"
* statusReason ^example.label = "Valid Example"
* vaccineCode 1..1 MS
* vaccineCode.coding ^slicing.discriminator[0].type = #value
// * vaccineCode.coding ^slicing.discriminator[0].path = "$this"
* vaccineCode.coding ^slicing.discriminator[0].path = "$this"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding contains
    vaccine 1..1 MS and
    product 0..1 MS
* vaccineCode.coding[vaccine] from $vs-vaccine-code (required)
* vaccineCode.coding[vaccine] ^example.valueCodeableConcept = $sct#346313005 "Allergen extract vaccines"
* vaccineCode.coding[vaccine] ^example.label = "Valid Example"
* vaccineCode.coding[product] from $vs-vaccine-product-code (required)
* vaccineCode.coding[product] ^example.valueCodeableConcept = $atc#J07AC "Anthrax vaccines"
* vaccineCode.coding[product] ^example.label = "Valid Example"
* patient 1..1 MS
* patient only Reference(ILCorePatient)
* encounter only Reference(ILCoreEncounter)
* occurrence[x] 1..1 MS
* occurrenceDateTime MS
* primarySource 1..1 MS
* location only Reference(ILCoreLocation)
* manufacturer only Reference(ILCoreOrganization)
* lotNumber MS
* site from $vs-immun-body-site (extensible)
* site ^example.valueCodeableConcept = $sct#368208006 "Left upper arm structure (body structure)"
* site ^example.label = "Valid Example"
* route from $route (extensible)
* performer.actor only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCoreOrganization)
* reasonReference only Reference(ILCoreCondition or ILCoreObservation or ILCoreDiagnosticReport)
* protocolApplied.targetDisease from $vs-target-disease (preferred)
* reaction.detail only Reference(ILCoreImmunizationReactionObservation)