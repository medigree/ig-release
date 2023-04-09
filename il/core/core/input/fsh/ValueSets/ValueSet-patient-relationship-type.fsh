
ValueSet: ILCorePatientRelationshipType
Id: patient-relationship-type
Title: "IL Core Patient Relationship Type codes"
Description: "A set of codes that can be used to indicate the relationship between a Patient and a Related Person."

* ^language = #en-US
* ^url = $vs-patient-relationship-type
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* include codes from system $v2-0131
* include codes from system $v3-RoleCode where concept is-a #_PersonalRelationshipRoleType
* $v3-RoleCode#GUARD "Guardian"
* $v3-RoleCode#HPOWATT "healthcare power of attorney"

