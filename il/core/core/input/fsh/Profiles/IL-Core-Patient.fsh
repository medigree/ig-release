
Profile: ILCorePatient
Parent: Patient
Id: il-core-patient
Title: "ILCore Patient Profile"
Description: "Israel Core Proposed constraints and extensions on the Patient Resource."

* ^url = $ILPatient
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-01-30"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Patient profile"
* . ^definition = "The Patient Profile is based upon the core FHIR Patient Resource"
* . ^isModifier = false

* extension contains
    ext-il-hmo named hmo 0..1 and
    $ext-admin-parent-name named parentName 0..* and
    $ext-birth-place named birthPlace 0..1 and 
    ext-patient-immigration named immigration 0..* and
    $us-core-birth-sex named birthSex 0..1 
* extension[hmo] ^short = "Extension: Israel Core HMO (קופת חולים)"
* extension[hmo] ^definition = "A code classifying the person's Israeli HMO"
* extension[hmo] ^mustSupport = true
* extension[parentName] ^short = "Extension: Administrative Parent Name"
* extension[parentName] ^definition = "Extension: The name of a person’s parent, recorded for administrative purposes as part of the person’s demographics (e.g to help with identification). This SHOULD NOT be confused with a parent whose details are recorded for contact purposes (Patient.contact) or as a family member (RelatedPerson). Most systems will use the “father’s name” field as the source of data for this extension. NOTE: This extension replaces the old ParentName extension and is the PREFFERED extension"
* extension[parentName] ^mustSupport = true
* extension[birthPlace] ^short = "Extension: Place of Birth for patient"
* extension[birthPlace] ^definition = "The registered place of birth of the patient. A sytem may use the address.text if they don't store the birthPlace address in discrete elements"
* extension[immigration] ^short = "Extension: Patient Immigration"
* extension[immigration] ^definition = "Extension: Immigration information for a patient - for the purpose of this extension - immigration is an international movement of a person to a destination country in order to settle as permanent resident"
* extension[birthSex] ^short = "Extension: US Core Birth Sex Extension"
* extension[birthSex] ^definition = "A code classifying the person’s sex assigned at birth as specified by the Office of the National Coordinator for Health IT (ONC). This extension aligns with the C-CDA Birth Sex Observation (LOINC 76689-9)."

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
//    ppn-no-system 0..* 

* identifier[il-id].value 1..1 MS
* identifier[il-id] ^short = "Israeli National Identifier"
* identifier[il-id] ^definition = "Israeli ID number (9 digit unchangeable number, including leading zeros and includes a control digit), including temporarily identification numbers assigned by Israeli National Insurance"
* identifier[il-id] ^mustSupport = true
* identifier[il-id].value obeys il-id-chk
* identifier[il-id].value ^short = "An Israeli ID number"
* identifier[il-id].system 1..1 MS
* identifier[il-id].system = $il-id (exactly)
// * identifier[il-id] ^patternIdentifier.system = $il-id
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
// * identifier[pna-id] ^patternIdentifier.system = $pna-id
* identifier[pna-id].value ^example.valueString = "000000018"
* identifier[pna-id].value ^example.label = "Valid Example"

* identifier[ppn].system 1..1 MS
* identifier[ppn].value 1..1 MS
* identifier[ppn] ^short = "Passport Number"
* identifier[ppn] ^definition = "Passport number" 
* identifier[ppn] ^mustSupport = false
* identifier[ppn].type = $id-type#PPN
* identifier[ppn].value ^short = "Passport Number"
* identifier[ppn].system from $vs-pp-uri (required)

* identifier[enc].value 1..1 MS
* identifier[enc] ^short = "Person's Identifier - MoH encrypted"
* identifier[enc] ^definition = "The person’s identifier after applying MoH’s standard primary encryption algorithm"
* identifier[enc] ^mustSupport = false
* identifier[enc].value ^short = "An encrypted identifier"
* identifier[enc].system 1..1 MS
* identifier[enc].system = $enc (exactly)
// * identifier[enc] ^patternIdentifier.system = $enc
* identifier[enc].value ^example.valueString = "000000018"
* identifier[enc].value ^example.label = "Valid Example"
* identifier[enc].assigner only Reference(ILCoreOrganization)

// * identifier[ppn].system ^example.valueCode = #http://hl7.org/fhir/sid/passport-USA
// * identifier[ppn].system ^example.label = "Valid Example"
// * identifier[ppn-no-system].system.extension contains $data-absent-reason named dataAbsentReason 1..1
// * identifier[ppn-no-system].system.extension[dataAbsentReason].valueCode 1..1
// * identifier[ppn-no-system].value 1..1 MS
// * identifier[ppn-no-system] ^short = "Passport Number without system (issuing country)"
// * identifier[ppn-no-system] ^definition = "Passport number without the issuing country's system" 
// * identifier[ppn-no-system] ^mustSupport = false
// * identifier[ppn-no-system].value ^short = "Passport Number"
// * identifier[ppn-no-system].period 1..1
// * identifier[ppn-no-system].system.extension.url = $data-absent-reason


//address 
* address only ILCoreAddress  // how do we add cardinality?
* address 0..*

//communication
* communication.language 1..1 MS

//name
* name 1..* MS
* name obeys il-patient-name2
// * name obeys il-patient-name
* name.family 0..1 MS 
* name.given 0..* MS 
* name.extension contains $data-absent-reason named dataAbsentReason 0..1

//telecom
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* telecom.use 0..1 MS

//gender
* gender 1..1 MS

//birthdate
* birthDate 1..1 MS

* contact.organization only Reference(ILCoreOrganization)
* generalPractitioner only Reference(ILCoreOrganization or ILCorePractitioner or ILCorePractitionerRole)
* managingOrganization only Reference(ILCoreOrganization)
* link.other only Reference(ILCorePatient or ILCoreRelatedPerson)
