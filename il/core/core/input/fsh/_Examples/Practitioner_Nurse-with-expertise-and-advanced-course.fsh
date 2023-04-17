Instance: practitioner-nurse-with-expertise-and-advanced-courses
InstanceOf: ILCorePractitioner
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">אחות מוסמכת עם מומחיות וקורס על בסיסי</div>"
* text.status = #generated

* identifier[nurse-lic].system = $nurse-license-moh
* identifier[nurse-lic].value = "207927"
* identifier[nurse-lic].period.start = "2012-09-06"
* active = true
* name.prefix = "גב'"
* name.family = "אייזקס"
* name.given = "אביב"
* name.text = "אביב אייזקס"
* telecom[0].system = #phone
* telecom[0].value = "02-5334295"
* telecom[0].use = #work
* gender = #female
* birthDate = "1987-04-30"
* qualification[+].identifier[0].system = $nurse-license-moh
* qualification[=].identifier[0].value = "207927"
* qualification[=].identifier[0].period.start = "2012-09-06"
* qualification[=].code = $pract-certificate-type-moh#26 "תעודת רישום"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-profession-moh#101 "אח/ות מוסמכ/ת"

* qualification[+].identifier[0].system = $nurse-expertise
* qualification[=].identifier[0].value = "108-0030"
* qualification[=].identifier[0].period.start = "2021-05-05"
* qualification[=].code = $pract-certificate-type-moh#5 "תעודת מומחיות"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-expertise#108 "פגים"

* qualification[+].identifier[0].system = $nurse-advanced-course
* qualification[=].identifier[0].value = "65-207927"
* qualification[=].identifier[0].period.start = "1900-01-01"
* qualification[=].code = $pract-certificate-type-moh#110 "תעודת רישום קורס ע ב"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-advanced-course-moh#65 "הדרכה קלינית"

* qualification[+].identifier[0].system = $nurse-advanced-course
* qualification[=].identifier[0].value = "71-207927"
* qualification[=].identifier[0].period.start = "1900-01-01"
* qualification[=].code = $pract-certificate-type-moh#110 "תעודת רישום קורס ע ב"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-advanced-course-moh#71 "טיפול נמרץ פגים"
