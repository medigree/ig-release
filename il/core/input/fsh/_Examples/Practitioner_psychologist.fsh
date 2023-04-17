Instance: practitioner-psychologist
InstanceOf: ILCorePractitioner
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">psychologist with an instructor certificate</div>"
* text.status = #generated

* identifier[prac-lic].system = $practitioner-license-moh
* identifier[prac-lic].value = "27-1234"
* active = true
* name.prefix = "גב'"
* name.family = "לוין"
* name.given = "שרי"
* name.text = "גב' שרי לוין"
* telecom[0].system = #phone
* telecom[0].value = "04-44442254"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "DG@example.com"
* gender = #female
* birthDate = "1980-06-22"

* qualification[+].identifier[0].system = $practitioner-certificate
* qualification[=].identifier[0].value = "27-1234"
* qualification[=].code = $pract-certificate-type-moh#2 "רשיון קבוע"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-profession-moh#27 "פסיכולוג"

* qualification[+].identifier[0].system = $practitioner-expertise
* qualification[=].identifier[0].value = "123445"
* qualification[=].code = $pract-certificate-type-moh#5 "תעודת מומחה"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-expertise#21 "הרדמה"
