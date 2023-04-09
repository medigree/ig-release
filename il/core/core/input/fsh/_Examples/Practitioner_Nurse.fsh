Instance: practitioner-nurse 
InstanceOf: ILCorePractitioner
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">אחות מוסמכת ללא מומחיות עם קורסים על בסיסיים</div>"
* text.status = #generated

* identifier[nurse-lic].system = $nurse-license-moh
* identifier[nurse-lic].value = "7962"
* identifier[nurse-lic].period.start = "1991-10-14"
* active = true
* name.prefix = "גב'"
* name.family = "לוזון"
* name.given = "אביבה"
* name.text = "אביבה לוזון"
* telecom[0].system = #phone
* telecom[0].value = "02-5334295"
* telecom[0].use = #work
* gender = #female
* birthDate = "1965-11-30"
* qualification[+].identifier[0].system = $nurse-license-moh
* qualification[=].identifier[0].value = "7962"
* qualification[=].identifier[0].period.start = "1991-10-14"
* qualification[=].code = $pract-certificate-type-moh#26 "תעודת רישום"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-profession-moh#101 "אח/ות מוסמכ/ת"

* qualification[+].identifier[0].system = $nurse-expertise
* qualification[=].identifier[0].value = "102-12070"
* qualification[=].code = $pract-certificate-type-moh#5 "תעודת מומחה"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-expertise#102 "סוכרת"

* qualification[+].identifier[0].system = $nurse-advanced-course
* qualification[=].identifier[0].value = "19-7962"
* qualification[=].code = $pract-certificate-type-moh#110 "תעודת רישום קורס ע ב"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-advanced-course-moh#19 "נפרולוגיה"

