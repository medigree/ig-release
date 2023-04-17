Extension: ParentName
Id: ext-parent-name
Title: "Ext: Name of parent"
Description: "Extension: The name of a parent. NOTE: This extension is now DEPRECATED (ststus: retired) and has been replaced with AdminParentName"

* ^url = $ext-parent-name
* ^version = "0.11.0"
* ^status = #retired
* value[x] only string
* valueString ^example.valueString = "משה"
* valueString ^example.label = "Valid Example"
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson"
* ^context[+].type = #element
* ^context[=].expression = "Person"