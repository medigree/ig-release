Profile: ILCoreRelatedPerson
Parent: RelatedPerson
Id: il-core-related-person
Title: "ILCore RelatedPerson Profile"
Description: "Israel Core proposed constraints and extensions on the RelatedPerson Resource"

* ^url = $ILRelatedPerson
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-05-02"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCoreRelatedPerson Profile"
* . ^definition = "Definitions for the profile-RelatedPerson resource profile."
* . ^isModifier = false

* identifier ^min = 1
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier.value ^short = "The value that is unique within the system."
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
   il-id 0..1 and
   pna-id 0..1 and
   ppn 0..* and
   enc 0..*
   
* identifier.assigner only Reference(ILCoreOrganization)
* identifier[il-id].value 1..1 MS
* identifier[il-id] ^short = "Israeli National Identifier"
* identifier[il-id] ^definition = "Israeli ID number (9 digit unchangeable number, including leading zeros and includes a control digit), including temporarily identification numbers assigned by Israeli National Insurance"
* identifier[il-id] ^mustSupport = true
* identifier[il-id].value obeys il-id-chk
* identifier[il-id].value ^short = "An Israeli ID number"
* identifier[il-id].system 1..1 MS
* identifier[il-id].system = $il-id (exactly)
* identifier[il-id].value ^example.valueString = "000000018"
* identifier[il-id].value ^example.label = "Valid Example"
* identifier[il-id].assigner only Reference(ILCoreOrganization)

* identifier[pna-id].value 1..1 MS
* identifier[pna-id] ^short = "Palestinian National Identifier"
* identifier[pna-id] ^definition = "Palestinian ID number"
* identifier[pna-id] ^mustSupport = false
* identifier[pna-id].value ^short = "A Palestininan ID number"
* identifier[pna-id].system 1..1 MS
* identifier[pna-id].system = $pna-id (exactly)
* identifier[pna-id].value ^example.valueString = "000000018"
* identifier[pna-id].value ^example.label = "Valid Example"
* identifier[pna-id].assigner only Reference(ILCoreOrganization)

* identifier[ppn].system 1..1 MS
* identifier[ppn].value 1..1 MS
* identifier[ppn] ^short = "Passport Number"
* identifier[ppn] ^definition = "Passport number" 
* identifier[ppn] ^mustSupport = false
* identifier[ppn].type = $id-type#PPN
* identifier[ppn].value ^short = "Passport Number"
* identifier[ppn].system from $vs-pp-uri (required)
* identifier[ppn].assigner only Reference(ILCoreOrganization)
// * identifier[ppn].system ^example.valueCode = #http://hl7.org/fhir/sid/passport-USA
// * identifier[ppn].system ^example.label = "Valid Example"

* identifier[enc].value 1..1 MS
* identifier[enc] ^short = "Person's Identifier - MoH encrypted"
* identifier[enc] ^definition = "The person’s identifier after applying MoH’s standard primary encryption algorithm"
* identifier[enc] ^mustSupport = false
* identifier[enc].value ^short = "An encrypted identifier"
* identifier[enc].system 1..1 MS
* identifier[enc].system = $enc (exactly)
* identifier[enc].value ^example.valueString = "000000018"
* identifier[enc].value ^example.label = "Valid Example"
* identifier[enc].assigner only Reference(ILCoreOrganization)

* extension contains
    $ext-admin-parent-name named parentName 0..* 
* extension[parentName] ^short = "Extension: The name of the parent"
* extension[parentName] ^definition = "Specifies the entire parent name as it should be displayed e.g. on an application UI." 
* extension[parentName] ^mustSupport = true

* active MS
* active 0..1
* patient MS
* patient only Reference(ILCorePatient)
* relationship MS
* relationship 0..*
* relationship from $vs-patient-relationship-type
* name MS
* telecom MS
* address only ILCoreAddress
* address 0..*
