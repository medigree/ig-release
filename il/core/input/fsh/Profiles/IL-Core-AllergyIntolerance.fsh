Profile: ILCoreAllergyIntolerance
Parent: AllergyIntolerance
Id: il-core-allergy-intolerance
Title: "ILCore AllergyIntolerance Profile"
Description: "Israel Core proposed constraints and extensions on the AllergyIntolerance Resource"

* ^url = $ILAllergyIntolerance
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2022-08-15"
* ^publisher = "Israeli Ministry of Health"
* . ^short = "ILCore AllergyIntolerance Profile"
* . ^definition = "Definitions for the profile-AllergyIntolerance resource profile."
* . ^isModifier = false

* extension contains
    $ext-allergy-intolerance-end named AllergyIntoleranceEnd 0..1
* clinicalStatus and verificationStatus MS
* code 1..1
* code.coding.system 1..1
* code.coding.code 1..1
* code from $vs-il-core-allergy-intolerance-code (extensible)
* code ^example.valueCodeableConcept = $sct#1003755004 "Allergy to Hevea brasiliensis latex protein (finding)"
* code ^example.label = "Valid Example"
* code obeys element-sct

* patient only Reference(ILCorePatient) 
* encounter only Reference(ILCoreEncounter)
* recorder only Reference(ILCorePractitioner or ILCorePractitionerRole or ILCorePatient or ILCoreRelatedPerson)
* asserter only Reference(ILCorePatient or ILCoreRelatedPerson or ILCorePractitioner or ILCorePractitionerRole)
* reaction.substance from $vs-il-core-substance (extensible)
* reaction.substance ^example.valueCodeableConcept = $sct#387458008 "Aspirin (substance)"
* reaction.substance ^example.label = "Valid Example"
* reaction.manifestation from $vs-il-core-manifestation (extensible) 
* reaction.manifestation ^example.valueCodeableConcept = $sct#60862001 "Tinnitus (finding)"
* reaction.manifestation ^example.label = "Valid Example"
* reaction.manifestation obeys element-sct
* reaction.exposureRoute from $vs-il-core-route-code (extensible)
* reaction.exposureRoute ^example.valueCodeableConcept = $sct#26643006 "Oral route (qualifier value)"
* reaction.exposureRoute ^example.label = "Valid Example"
* reaction.extension contains 
    $ext-reaction-duration named duration 0..1
