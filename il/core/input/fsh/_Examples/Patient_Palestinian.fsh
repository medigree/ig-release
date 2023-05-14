Instance: patient-with-palestinian-id
InstanceOf: ILCorePatient
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">דלאל עומאר</div>"
* text.status = #generated

* identifier[0].system = $pna-id
* identifier[0].value = "566333344"
* active = true
* name.family = "דלאל"
* name.given = "עומאר"
* name.text = "עומאר דלאל"
* extension[parentName].extension[given].valueString = "יוסוף"
* extension[parentName].extension[role].valueCode = $v3-RoleCode#FTH "father"
* extension[parentName].extension[official].valueBoolean = false
* telecom[0].system = #phone
* telecom[0].value = "059334455"
* telecom[0].use = #mobile
* telecom[1].system = #email
* telecom[1].value = "dalal@example.com"
* gender = #male
* birthDate = "1999-02-05"
* address[+].line = "חילו 20 עזה"
* address[=].country = $country-codes#PS
* address.city = "עזה"
* deceasedBoolean = false

