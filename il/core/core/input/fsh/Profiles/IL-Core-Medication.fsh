Profile: ILCoreMedication
Parent: Medication
Id: il-core-medication
Title: "ILCore Medication Profile"
Description: "Israel Core proposed constraints and extensions on the Medication Resource"

* ^url = $ILMedication
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Medication Profile"
* . ^definition = "Definitions for the profile-Medication resource profile."
* . ^isModifier = false

* identifier.assigner only Reference(ILCoreOrganization)
* manufacturer only Reference(ILCoreOrganization)
* ingredient.itemReference only Reference(Substance or ILCoreMedication)
* code 1..1 MS
* code from $vs-il-core-medication-code (extensible)
* form from http://hl7.org/fhir/ValueSet/medication-form-codes (extensible)

// the following lines of code were the previous version. //kippi Jun-03-2023
// * code.coding ^slicing.discriminator[0].type = #value
// * code.coding ^slicing.discriminator[0].path = "system"
// * code.coding ^slicing.rules = #open
// * code.coding contains
//    snomed 0..* and
//    yarpa 0..* 
// * code.coding[snomed].system 1..1
// * code.coding[snomed].system = "http://snomed.info/sct" (exactly)
// * code.coding[snomed].code 1..1
// * code.coding[snomed].code from SNOMEDCTMedicationCodes
// * code.coding[snomed].code ^example.valueCodeableConcept = $sct#775161003 "Product containing only chloramphenicol and hydrocortisone (medicinal product)"
// * code.coding[snomed].code ^example.label = "Valid Example"
// * code.coding[yarpa].system 1..1
// * code.coding[yarpa].system = "http://yarpa.co.il/catalog" (exactly)
// * code.coding[yarpa].display = "YARPA medication IDs" (exactly)
// * code.coding[yarpa].code 1..1
// * code.coding[yarpa].code from $vs-yarpa-medication-code
// * code.coding[yarpa].code ^example.valueCodeableConcept = $yarpa-medication-code#20288 "AMPHO-MORONAL 10MG 20TAB"
// * code.coding[yarpa].code ^example.label = "Valid Example"
