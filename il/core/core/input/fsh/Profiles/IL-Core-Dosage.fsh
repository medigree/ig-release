
Profile: ILCoreDosage
Parent: Dosage
Id: il-core-dosage
Title: "ILCore Dosage Profile"
Description: "Adds several Israel-specific extensions and constraints to the Dosage datatype"

* ^url = $ILDosage
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2023-03-06"
* ^publisher = "Israeli Ministry of Health"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "amos@outburn.co.il"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#IL
* ^copyright = "Israeli Ministry of Health" 

* text MS
* additionalInstruction ^binding.strength = #extensible
* asNeeded[x] ^binding.strength = #extensible
* site ^binding.strength = #extensible
* route ^binding.strength = #extensible
* method ^binding.strength = #extensible
* doseAndRate.type ^binding.strength = #extensible
* doseAndRate.doseQuantity from $vs-il-core-units-of-measure (required)
* maxDosePerAdministration from $vs-il-core-units-of-measure (required)
* maxDosePerLifetime from $vs-il-core-units-of-measure (required)

