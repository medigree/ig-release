
Profile: ILCoreOrganization
Parent: Organization
Id: il-core-organization
Title: "ILCore Organization Profile"
Description: "Israel Core proposed constraints and extensions on the Organization Resource"

* ^url = $ILOrganization
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-03-21"
* ^publisher = "Ministry of Health of Israel"

* . ^short = "ILCore Organization Profile"
* . ^definition = "The Organization Profile is based upon the core FHIR Organization Resource"
* . ^isModifier = false
* . obeys il-organization-identifier

* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier.value ^short = "The value that is unique within the system."
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
   moh-inst-symbol 0..1 and
   legal-entity 0..1 and
   moe-inst 0..1

* identifier[moh-inst-symbol].system 1..1 MS
* identifier[moh-inst-symbol].value 1..1 MS
* identifier[moh-inst-symbol] ^short = "MoH institute sympbol number"
* identifier[moh-inst-symbol] ^definition = "Institute symbol number as issued by Israeli Ministry of Health (MoH). MoH portal - http://institutions.health.gov.il/Institutions"
* identifier[moh-inst-symbol] ^mustSupport = true
* identifier[moh-inst-symbol].system = $moh-inst-symbol (exactly)
* identifier[moh-inst-symbol].value ^short = "An MoH institute license number"

* identifier[legal-entity].system 1..1 MS
* identifier[legal-entity].value 1..1 MS
* identifier[legal-entity] ^short = "Israeli legal entity identifier (Hebrew -  ח.פ., מספר עמותה וכו)"
* identifier[legal-entity] ^definition = "Unique identifier (9 digit unchangeable number) issued by Israeli legal authorities for Leagl entities of any organization, such as goverment institutes, ottoman assoc., non-profit organizations, private companies"
* identifier[legal-entity] ^mustSupport = true
* identifier[legal-entity].system = $legal-entity (exactly)
* identifier[legal-entity].value obeys nine-digits-chk
* identifier[legal-entity].value ^short = "Israeli legal entity Identifier"

* identifier[moe-inst].system 1..1 MS
* identifier[moe-inst].value 1..1 MS
* identifier[moe-inst] ^short = "MoE institute symbol"
* identifier[moe-inst] ^definition = "Institute symbol as issued by Israeli Ministry of Education (MoE). MoE portal - https://apps.education.gov.il/imsnet/itur.aspx"
* identifier[moe-inst] ^mustSupport = false
* identifier[moe-inst].system = $moe-inst (exactly)
* identifier[moe-inst].value ^short = "An MoE institute symbol"

//active
* active 0..1 MS

//type
* type from $vs-organization-type (extensible)
* type ^slicing.discriminator[0].type = #value
* type ^slicing.discriminator[0].path = "$this"
* type ^slicing.rules = #open
* type contains 
      moh-institute-type 0..1 and
      moh-department-type 0..1
* type[moh-institute-type] from $vs-institution-type-moh (required)
* type[moh-institute-type] ^example.valueCodeableConcept = $institution-type-moh#76 "משרדי ממשלה"
* type[moh-institute-type] ^example.label = "Valid Example"
* type[moh-department-type] from $vs-department-type-moh (required)
* type[moh-department-type] ^example.valueCodeableConcept = $department-type-moh#10000 "אשפוז - פנימית"
* type[moh-department-type] ^example.label = "Valid Example"

//name
* name 1..1 MS

//telecom
* telecom MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* telecom.use 0..1 MS

//address 
* address only ILCoreAddress 
* address 0..* MS

* partOf only Reference(ILCoreOrganization)