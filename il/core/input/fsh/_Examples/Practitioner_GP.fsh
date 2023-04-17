Instance: practitioner-md
InstanceOf: ILCorePractitioner
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">רופאת משפחה</div>"
* text.status = #generated

* identifier[prac-lic].system = $practitioner-license-moh
* identifier[prac-lic].value = "1-22947"
* active = true
* name.prefix = "דר'"
* name.family = "גרינפלד"
* name.given = "דיאנה"
* name.text = "דר' גרינפלד דיאנה"
* telecom[0].system = #phone
* telecom[0].value = "04-6421420"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "DG@example.com"
* gender = #female
* birthDate = "1979-04-30"
* qualification[+].identifier[0].system = $practitioner-certificate
* qualification[=].identifier[0].value = "1-22947"
* qualification[=].identifier[0].period.start = "2012-09-06"
* qualification[=].code = $pract-certificate-type-moh#2 "רישיון קבוע"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-profession-moh#1 "רפואה"