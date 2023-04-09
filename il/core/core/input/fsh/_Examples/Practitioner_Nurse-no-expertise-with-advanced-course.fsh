Instance: practitioner-nurse-no-expertise-with-advanced-courses 
InstanceOf: ILCorePractitioner
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">אחות מוסמכת ללא מומחיות עם קורסים על בסיסיים</div>"
* text.status = #generated

* identifier[nurse-lic].system = $nurse-license-moh
* identifier[nurse-lic].value = "118699"
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
* qualification[=].identifier[0].value = "118699"
* qualification[=].identifier[0].period.start = "1991-10-14"
* qualification[=].code = $pract-certificate-type-moh#26 "תעודת רישום"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-profession-moh#101 "אח/ות מוסמכ/ת"

* qualification[+].identifier[0].system = $nurse-advanced-course
* qualification[=].identifier[0].value = "18-118699"
* qualification[=].code = $pract-certificate-type-moh#110 "תעודת רישום קורס ע ב"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-advanced-course-moh#18 "אונקולוגיה"

* qualification[+].identifier[0].system = $nurse-advanced-course
* qualification[=].identifier[0].value = "65-118699"
* qualification[=].code = $pract-certificate-type-moh#110 "תעודת רישום קורס ע ב"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-advanced-course-moh#65 "הדרכה קלינית"

* qualification[+].identifier[0].system = $nurse-advanced-course
* qualification[=].identifier[0].value = "109-118699"
* qualification[=].code = $pract-certificate-type-moh#110 "תעודת רישום קורס ע ב"
* qualification[=].extension[0].url = $ext-qualification-practice
* qualification[=].extension[0].valueCodeableConcept = $practitioner-advanced-course-moh#109 "רישום מרשמי המשך על ידי אחות"

