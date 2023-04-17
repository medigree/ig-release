Profile: USCoreDocumentReferenceProfile
Parent: DocumentReference
Id: us-core-documentreference
Title: "US Core DocumentReference Profile"
Description: "To promote interoperability and adoption through common implementation, this profile sets minimum expectations for searching and fetching patient documents including Clinical Notes using the DocumentReference resource. It identifies the mandatory core elements, extensions, vocabularies and value sets which **SHALL** be present in the DocumentReference resource when using this profile. It provides the floor for standards development for specific uses cases. Prior to reviewing this profile, implementers are encouraged to read the Clinical Notes Guidance to understand the overlap of US Core DocumentReference Profile and US Core DiagnosticReport Profile for Report and Note exchange."
* ^version = "5.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2022-04-20"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* . ^definition = "\\-"
* . ^comment = "\\-"
* . ^mustSupport = false
* identifier MS
* status MS
* status from DocumentReferenceStatus (required)
* type 1.. MS
* type from $us-core-documentreference-type (required)
* type ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-minValueSet"
* type ^binding.extension.valueCanonical = "http://hl7.org/fhir/us/core/ValueSet/us-core-clinical-note-type"
* type ^binding.description = "All LOINC  values whose SCALE is DOC in the LOINC database and the HL7 v3 Code System NullFlavor concept 'unknown'"
* category 1.. MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains us-core 0..* MS
* category[us-core] from $us-core-documentreference-category (required)
* category[us-core] ^binding.description = "The US Core DocumentReferences Type Value Set is a &#39;starter set&#39; of categories supported for fetching and storing clinical notes."
* subject 1.. MS
* subject only Reference($us-core-patient)
* date MS
* author only Reference($us-core-practitioner or $us-core-organization or $us-core-patient or $us-core-practitionerrole or $us-core-relatedperson or Device)
* author MS
* content MS
* content.attachment MS
* content.attachment obeys us-core-6
* content.attachment.contentType MS
* content.attachment.data MS
* content.attachment.data ^min = 0
* content.attachment.data ^condition = "us-core-6"
* content.attachment.url MS
* content.attachment.url ^min = 0
* content.attachment.url ^condition = "us-core-6"
* content.format MS
* content.format from DocumentReferenceFormatCodeSet (extensible)
* context MS
* context.encounter ..1 MS
* context.encounter only Reference($us-core-encounter)
* context.period MS