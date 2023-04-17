Extension: AdminParentName
Id: ext-administrative-parent-name
Title: "Ext: Administrative Parent Name"
Description: "Extension: The name of a person’s parent, recorded for administrative purposes as part of the person’s demographics (e.g to help with identification). This SHOULD NOT be confused with a parent whose details are recorded for contact purposes (Patient.contact) or as a family member (RelatedPerson). Most systems will use the “father’s name” field as the source of data for this extension. NOTE: This extension replaces the old ParentName extension and is the PREFFERED extension. Note: there SHOULD be only one parent marked as 'official'"
* ^
* ^url = $ext-admin-parent-name
* ^version = "0.11.0"
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson"
* ^context[+].type = #element
* ^context[=].expression = "Person"
* . 0..*
* extension contains
    given 1..1 and
    role 0..1 and
    official 0..1
* extension[given] only Extension
* extension[given] ^short = "first/given name of parent"
* extension[given] ^definition = "when recording a parent’s name as part of a person’s record, only the given name is used"
* extension[given].url only uri
* extension[given].value[x] 1..
* extension[given].value[x] only string
* extension[given].valueString ^example.valueString = "James"
* extension[given].valueString ^example.label = "Valid Example"
* extension[role] only Extension
* extension[role] ^short = "role of parent"
* extension[role] ^definition = "most systems define this field as “father’s name”, but it may actually contain the name of a mother. When the role is explicitly known, systems should populate this element."
* extension[role].url only uri
* extension[role].value[x] 1..
* extension[role].value[x] only code
* extension[role].valueCode from $vs-il-core-parent-name-role (required)
* extension[role].valueCode ^example.valueCode = $v3-RoleCode#MTH "mother"
* extension[role].valueCode ^example.label = "Valid Example"
* extension[official] only Extension
* extension[official] ^short = "this parent name is the official one"
* extension[official] ^definition = "A parent’s name marked as ‘official’ is the one expected to match the person’s father name in governmental records."
* extension[official].url only uri
* extension[official].value[x] 1..
* extension[official].value[x] only boolean
* extension[official].valueBoolean ^example.valueBoolean = true
* extension[official].valueBoolean ^example.label = "Valid Example"
