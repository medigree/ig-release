
Profile: ILCorePractitioner
Parent: Practitioner
Id: il-core-practitioner
Title: "ILCore Practitioner Profile"
Description: "Israel Core proposed constraints and extensions on the Practitioner Resource"

* ^url = $ILPractitioner
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-03-04"
* ^publisher = "Israeli Ministry of Health"

* . ^short = "ILCore Practitioner Profile"
* . ^definition = "Definitions for the profile-practitioner resource profile."
* . ^isModifier = false

* identifier ^min = 1
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier.value ^short = "The value that is unique within the system."
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
   prac-lic 0..1 and
   nurse-lic 0..1 and
   molsa-sw-lic 0..1 and
   il-id 0..1 and
   pna-id 0..1 and
   ppn 0..*

* identifier.assigner only Reference(ILCoreOrganization)
* identifier[prac-lic] ^short = "Israeli Ministry of Health practitioner license"
* identifier[prac-lic] ^definition = """Israeli Ministry of Health medical practitioner license. [MoH practitioner portal](https://practitioners.health.gov.il/Practitioners)\n
<mark>Note:</mark> Should include the profession-code, a dash (-) and a sequence number. I.e., \<profession-code\>-\<profession-certificate-number\> where profession-code is a value of <a href="https://simplifier.net/ilcore/practitioner-profession-moh-duplicate-2">PractitionerProfessionMoH</a>"""
* identifier[prac-lic] ^mustSupport = true
* identifier[prac-lic].value ^short = "Israeli Ministry of Health Practitioner License"
* identifier[prac-lic].value obeys identifier-dash
* identifier[prac-lic].system 1..1
* identifier[prac-lic].system = $practitioner-license-moh (exactly)
* identifier[prac-lic] ^example.valueString = "1-12345"
* identifier[prac-lic] ^example.label = "valid Israeli Pracitioner Licence number example"
* identifier[prac-lic].value ^example.valueString = "1-12345"
* identifier[prac-lic].value ^example.label = "General"
* identifier[prac-lic].assigner only Reference(ILCoreOrganization)

* identifier[nurse-lic] ^short = "Israeli MoH Nurse license"
* identifier[nurse-lic] ^definition = "Israeli MoH Nurse license. MoH practitioner portal -  [https://practitioners.health.gov.il/Nurses](https://practitioners.health.gov.il/Nurses)"
* identifier[nurse-lic] ^mustSupport = true
* identifier[nurse-lic].value ^short = "MoH Nurse License"
* identifier[nurse-lic].value obeys identifier-digits
* identifier[nurse-lic].system 1..1
* identifier[nurse-lic].system = $nurse-license-moh (exactly)
* identifier[nurse-lic] ^example.valueString = "11111"
* identifier[nurse-lic] ^example.label = "valid Israeli Nurse registration number example"
* identifier[nurse-lic].value ^example.valueString = "11111"
* identifier[nurse-lic].value ^example.label = "General"
* identifier[nurse-lic].assigner only Reference(ILCoreOrganization)

* identifier[molsa-sw-lic] ^short = "Israeli Ministry of Welfare and Social Affairs socal-worker's license"
* identifier[molsa-sw-lic] ^definition = "Israeli Ministry of Welfare and Social Affairs socal-worker's license. [MOLSA social-worker's registry](https://data.gov.il/dataset/social-workers-registration)"
* identifier[molsa-sw-lic] ^mustSupport = true
* identifier[molsa-sw-lic].value ^short = "Israeli Ministry of Welfare and Social Affairs socal-worker's License"
* identifier[molsa-sw-lic].system 1..1
* identifier[molsa-sw-lic].system = $practitioner-license-molsa (exactly)
* identifier[molsa-sw-lic] ^example.valueString = "99999"
* identifier[molsa-sw-lic] ^example.label = "General"
* identifier[molsa-sw-lic].value ^example.valueString = "99999"
* identifier[molsa-sw-lic].value ^example.label = "valid Israeli SW Licence example"
* identifier[molsa-sw-lic].assigner only Reference(ILCoreOrganization)

* identifier[il-id].value 1..1 MS
* identifier[il-id] ^short = "Israeli National Identifier"
* identifier[il-id] ^definition = "Israeli ID number (9 digit unchangeable number, including leading zeros and includes a control digit), including temporarily identification numbers assigned by Israeli National Insurance"
* identifier[il-id] ^mustSupport = true
* identifier[il-id].value obeys il-id-chk
* identifier[il-id].value ^short = "An Israeli ID number"
* identifier[il-id].system 1..1 MS
* identifier[il-id].system = $il-id (exactly)
* identifier[il-id] ^example.valueString = "000000018"
* identifier[il-id] ^example.label = "Valid Israli ID number example"
* identifier[il-id].assigner only Reference(ILCoreOrganization)

* identifier[pna-id].value 1..1 MS
* identifier[pna-id] ^short = "Palestinian National Identifier"
* identifier[pna-id] ^definition = "Palestinian ID number"
* identifier[pna-id] ^mustSupport = false
* identifier[pna-id].value ^short = "A Palestininan ID number"
* identifier[pna-id].system 1..1 MS
* identifier[pna-id].system = $pna-id (exactly)
* identifier[pna-id] ^example.valueString = "000000018"
* identifier[pna-id] ^example.label = "Valid Example"
* identifier[pna-id].assigner only Reference(ILCoreOrganization)

* identifier[ppn].system 1..1 MS
* identifier[ppn].value 1..1 MS
* identifier[ppn] ^short = "Passport Number"
* identifier[ppn] ^definition = "Passport number" 
* identifier[ppn] ^mustSupport = false
* identifier[ppn].type = $id-type#PPN
* identifier[ppn].value ^short = "Passport Number"
* identifier[ppn].system from $vs-pp-uri (required)
* identifier[ppn].assigner only Reference(ILCoreOrganization)
// * identifier[ppn].system ^example.valueCode = #http://hl7.org/fhir/sid/passport-USA
// * identifier[ppn].system ^example.label = "General"


//address 
* address only ILCoreAddress 

//name
* name 1..* MS
* name.family 1..1 MS 


// * qualification.extension contains
//    $ext-qualification-practice named practice 1..1  // ask DORIT if the cardinality SHOULD change 13/12/21

* qualification ^definition = """The official certifications, training, and licenses that authorize or otherwise pertain to the provision of care by the practitioner. For example, a medical license issued by a medical board authorizing the practitioner to practice medicine within a certian locality.\n
<mark>Note:</mark> \n
<b><u>Certificates of all professions except nursing</b></u>\n
• For temporary license (slice: [moh-temp-practitioner-license]): code = 1; SHALL have identifier, consisting of profession code, a hyphen (\"-\"), followed by a number. Example - 1-1111;\n 
• For permanent license (slice: [moh-practitioner-license]): code = 2; SHALL have identifier, consisting of profession code, a hyphen (\"-\"), followed by a number. Example - 1-1111;\n 
• For certificate of expretise (slice: [moh-expretise]): code = 5; SHOULD (if available, not mandatory) have identifier, consisting of a number. Example - 12345;\n 
• For instructor certificate (slice: [moh-instructor]): code = 13; SHOULD (if available, not mandatory) have identifier, consisting of a number. Example - 12345;\n 
Check each slice for more specific details.
"""
* qualification.code from $vs-pract-certificate-type (extensible) // TODO - is this necessary? unclear = 13/12/21
* qualification ^slicing.discriminator[0].type = #pattern
* qualification ^slicing.discriminator[0].path = "code"
* qualification ^slicing.discriminator[1].type = #value
* qualification ^slicing.discriminator[1].path = "identifier.system"
* qualification ^slicing.rules = #open
* qualification contains
   moh-temp-practitioner-license 0..* and
   moh-practitioner-license 0..* and
   moh-expertise 0..* and
   moh-instructor 0..* and
   moh-nurse-temp-permit 0..* and
   moh-nurse-registration-certificate 0..* and
   moh-nurse-advanced-course 0..* and
   molsa-practitioner-sw-license 0..* 

* qualification[moh-temp-practitioner-license] ^short = "רישיון זמני"
* qualification[moh-temp-practitioner-license] ^definition = """Temporary practitioner license issued by Israeli Ministry of Health \n 
<mark>Note:</mark> identifier (מספר רישיון זמני למקצועות הבריאות) is <b>mandatory</b> and SHOULD include the profession-code, a dash (-) and a sequence number. I.e., \<profession-code\>-\<profession-certificate-number\> where profession-code is a value of <a href="https://simplifier.net/ilcore/practitioner-profession-moh-duplicate-2">PractitionerProfessionMoH</a>"""
* qualification[moh-temp-practitioner-license].code = $pract-certificate-type-moh#1
* qualification[moh-temp-practitioner-license].code.coding 1..*
* qualification[moh-temp-practitioner-license].code.coding ^slicing.discriminator[0].type = #pattern
* qualification[moh-temp-practitioner-license].code.coding ^slicing.discriminator[0].path = "$this"
* qualification[moh-temp-practitioner-license].code.coding ^slicing.rules = #open
* qualification[moh-temp-practitioner-license].code.coding contains default-slice 1..1
* qualification[moh-temp-practitioner-license].code.coding[default-slice] = $pract-certificate-type-moh#1
* qualification[moh-temp-practitioner-license].code.coding[default-slice].system 1..1
* qualification[moh-temp-practitioner-license].code.coding[default-slice].system = $pract-certificate-type-moh (exactly)
* qualification[moh-temp-practitioner-license].code.coding[default-slice].code 1..1
* qualification[moh-temp-practitioner-license].code.coding[default-slice].code = #1 (exactly)
* qualification[moh-temp-practitioner-license].code.coding[default-slice].display = "רשיון זמני" (exactly)
* qualification[moh-temp-practitioner-license].identifier 1..*
* qualification[moh-temp-practitioner-license].identifier.value obeys identifier-dash
* qualification[moh-temp-practitioner-license].identifier.system 1..1
* qualification[moh-temp-practitioner-license].identifier.system = $practitioner-license-moh (exactly)
* qualification[moh-temp-practitioner-license].identifier.system ^short = "Israeli MoH Practitioner License URI"
* qualification[moh-temp-practitioner-license].identifier.value 1..1
* qualification[moh-temp-practitioner-license].identifier.value ^short = "License number, including prefix"
* qualification[moh-temp-practitioner-license].identifier ^example.valueString = "1-12345"
* qualification[moh-temp-practitioner-license].identifier ^example.label = "valid Israeli Pracitioner certitificate number example"
* qualification[moh-temp-practitioner-license].identifier.value ^example.valueString = "1-12345"
* qualification[moh-temp-practitioner-license].identifier.value ^example.label = "valid Israeli Pracitioner certitificate number example"
* qualification[moh-temp-practitioner-license].issuer only Reference(ILCoreOrganization)
* qualification[moh-temp-practitioner-license].extension contains
   $ext-qualification-practice named practice 1..1
* qualification[moh-temp-practitioner-license].extension[practice].value[x] only CodeableConcept
* qualification[moh-temp-practitioner-license].extension[practice].valueCodeableConcept from $vs-practitioner-profession-moh
* qualification[moh-temp-practitioner-license].extension[practice] ^example.valueCodeableConcept = $practitioner-profession-moh#2 "רפואת שיניים"
* qualification[moh-temp-practitioner-license].extension[practice] ^example.label = "Valid example"

* qualification[moh-practitioner-license] ^short = "רישיון קבוע"
* qualification[moh-practitioner-license] ^definition = """Permanent practitioner license issued by Israeli Ministry of Health \n 
<mark>Note:</mark> identifier (מספר רישיון קבוע למקצועות הבריאות) is <b>mandatory</b> and SHOULD include the profession-code, a dash (-) and a sequence number. I.e., \<profession-code\>-\<profession-certificate-number\> where profession-code is a value of <a href="https://simplifier.net/ilcore/practitioner-profession-moh-duplicate-2">PractitionerProfessionMoH</a>"""
* qualification[moh-practitioner-license].code = $pract-certificate-type-moh#2
* qualification[moh-practitioner-license].code.coding 1..*
* qualification[moh-practitioner-license].code.coding ^slicing.discriminator[0].type = #pattern
* qualification[moh-practitioner-license].code.coding ^slicing.discriminator[0].path = "$this"
* qualification[moh-practitioner-license].code.coding ^slicing.rules = #open
* qualification[moh-practitioner-license].code.coding contains default-slice 1..1
* qualification[moh-practitioner-license].code.coding[default-slice] = $pract-certificate-type-moh#2
* qualification[moh-practitioner-license].code.coding[default-slice].system 1..1
* qualification[moh-practitioner-license].code.coding[default-slice].system = $pract-certificate-type-moh (exactly)
* qualification[moh-practitioner-license].code.coding[default-slice].code 1..1
* qualification[moh-practitioner-license].code.coding[default-slice].code = #2 (exactly)
* qualification[moh-practitioner-license].code.coding[default-slice].display = "רשיון קבוע" (exactly)
* qualification[moh-practitioner-license].identifier 1..*
* qualification[moh-practitioner-license].identifier.value obeys identifier-dash
* qualification[moh-practitioner-license].identifier.system 1..1
* qualification[moh-practitioner-license].identifier.system = $practitioner-license-moh (exactly)
* qualification[moh-practitioner-license].identifier.value ^short = "License number, including prefix"
* qualification[moh-practitioner-license].identifier.system ^short = "Israeli MoH Practitioner License URI"
* qualification[moh-practitioner-license].identifier.value 1..1
* qualification[moh-practitioner-license].identifier ^example.valueString = "1-12345"
* qualification[moh-practitioner-license].identifier ^example.label = "valid Israeli Pracitioner certitificate number example"
* qualification[moh-practitioner-license].identifier.value ^example.valueString = "1-12345"
* qualification[moh-practitioner-license].identifier.value ^example.label = "valid Israeli Pracitioner certitificate number example"
* qualification[moh-practitioner-license].issuer only Reference(ILCoreOrganization)
* qualification[moh-practitioner-license].extension contains
   $ext-qualification-practice named practice 1..1
* qualification[moh-practitioner-license].extension[practice].value[x] only CodeableConcept
* qualification[moh-practitioner-license].extension[practice].valueCodeableConcept from $vs-practitioner-profession-moh
* qualification[moh-practitioner-license].extension[practice] ^example.valueCodeableConcept = $practitioner-profession-moh#2 "רפואת שיניים"
* qualification[moh-practitioner-license].extension[practice] ^example.label = "valid example"

* qualification[moh-expertise] ^short = "תעודת מומחה"
* qualification[moh-expertise] ^definition = """Practitioner expertise certificate issued by Israeli Ministry of Health.\n 
<mark>Note:</mark> <b>Practitioner:</b> identifier (מספר תעודת מומחה למקצועות הבריאות) is not mandatory and if exists, SHOULD be a sequence number only. I.e, \<expertise-certificate-number\> \n
<b>Nurse:</b> identifier (מספר תעודת מומחה למקצועות הסיעוד) is <b>not mandatory</b> and if exists, SHOULD include the expertise-code, a dash (-) and a sequence number. I.e, \<expertise-code\>-\<expertise-certificate-number\> where expertise-code is a value of <a href="https://simplifier.net/ilcore/practitioner-expertise-moh-duplicate-2">PractitionerExpertiseMoH</a>"""
* qualification[moh-expertise].code = $pract-certificate-type-moh#5
* qualification[moh-expertise].code.coding 1..*
* qualification[moh-expertise].code.coding ^slicing.discriminator[0].type = #pattern
* qualification[moh-expertise].code.coding ^slicing.discriminator[0].path = "$this"
* qualification[moh-expertise].code.coding ^slicing.rules = #open
* qualification[moh-expertise].code.coding contains default-slice 1..1
* qualification[moh-expertise].code.coding[default-slice] = $pract-certificate-type-moh#5
* qualification[moh-expertise].code.coding[default-slice].system 1..1
* qualification[moh-expertise].code.coding[default-slice].system = $pract-certificate-type-moh (exactly)
* qualification[moh-expertise].code.coding[default-slice].code 1..1
* qualification[moh-expertise].code.coding[default-slice].code = #5 (exactly)
* qualification[moh-expertise].code.coding[default-slice].display = "תעודת מומחה" (exactly)
* qualification[moh-expertise].identifier 0..*
* qualification[moh-expertise].identifier.system 1..1
* qualification[moh-expertise].identifier.value 1..1
* qualification[moh-expertise].identifier ^example.valueString = "108-12345"
* qualification[moh-expertise].identifier ^example.label = "Valid MOH expertise certification number"
* qualification[moh-expertise].identifier.value ^example.valueString = "108-12345"
* qualification[moh-expertise].identifier.value ^example.label = "Valid MOH expertise certification number"
* qualification[moh-expertise].identifier ^slicing.discriminator.type = #value
* qualification[moh-expertise].identifier ^slicing.discriminator.path = "system"
* qualification[moh-expertise].identifier ^slicing.rules = #open
* qualification[moh-expertise].identifier contains
   moh-practitioner-expertise 0..* and
   moh-nurse-expertise 0..*
* qualification[moh-expertise].identifier[moh-practitioner-expertise].system = $practitioner-expertise (exactly)
* qualification[moh-expertise].identifier[moh-practitioner-expertise].system 1..1
* qualification[moh-expertise].identifier[moh-practitioner-expertise].system ^short = "Israeli MoH expertise certificate URI"
* qualification[moh-expertise].identifier[moh-practitioner-expertise].value ^short = "Certificate number"
* qualification[moh-expertise].identifier[moh-practitioner-expertise].value 1..1
* qualification[moh-expertise].identifier[moh-practitioner-expertise].value obeys identifier-digits
* qualification[moh-expertise].identifier[moh-practitioner-expertise] ^example.valueString = "12345"
* qualification[moh-expertise].identifier[moh-practitioner-expertise] ^example.label = "Valid practitioner expertise certifiaction number"
* qualification[moh-expertise].identifier[moh-practitioner-expertise].value ^example.valueString = "12345"
* qualification[moh-expertise].identifier[moh-practitioner-expertise].value ^example.label = "Valid practitioner expertise certifiaction number"
* qualification[moh-expertise].identifier[moh-nurse-expertise].system = $nurse-expertise (exactly)
* qualification[moh-expertise].identifier[moh-nurse-expertise].system 1..1
* qualification[moh-expertise].identifier[moh-nurse-expertise].system ^short = "Israeli MoH expertise certificate URI"
* qualification[moh-expertise].identifier[moh-nurse-expertise].value ^short = "Certificate number"
* qualification[moh-expertise].identifier[moh-nurse-expertise].value 1..1
* qualification[moh-expertise].identifier[moh-nurse-expertise].value obeys identifier-dash
* qualification[moh-expertise].identifier[moh-nurse-expertise] ^example.valueString = "108-12345"
* qualification[moh-expertise].identifier[moh-nurse-expertise] ^example.label = "Valid Nurse expertise certifiaction number"
* qualification[moh-expertise].identifier[moh-nurse-expertise].value ^example.valueString = "108-12345"
* qualification[moh-expertise].identifier[moh-nurse-expertise].value ^example.label = "Valid Nurse expertise certifiaction number"
* qualification[moh-expertise].issuer only Reference(ILCoreOrganization)
* qualification[moh-expertise].extension contains
   $ext-qualification-practice named practice 1..1
* qualification[moh-expertise].extension[practice].value[x] only CodeableConcept
* qualification[moh-expertise].extension[practice].valueCodeableConcept from $vs-practitioner-expertise (required)
* qualification[moh-expertise].extension[practice] ^example.valueCodeableConcept = $practitioner-expertise-moh#1 "רפואה פנימית"
* qualification[moh-expertise].extension[practice] ^example.label = "valid example"

* qualification[moh-instructor] ^short = "תעודת מדריך"
* qualification[moh-instructor] ^definition = """Practitioner instructor certificate issued by Israeli Ministry of Health.\n 
<mark>Note:</mark> identifier (מספר תעודת מדריך) is <b>not mandatory</b> and if exists, SHOULD be a sequence number. I.e, <expertise-code>-<instructor-certificate-number>"""
* qualification[moh-instructor].code = $pract-certificate-type-moh#13
* qualification[moh-instructor].code.coding 1..*
* qualification[moh-instructor].code.coding ^slicing.discriminator[0].type = #pattern
* qualification[moh-instructor].code.coding ^slicing.discriminator[0].path = "$this"
* qualification[moh-instructor].code.coding ^slicing.rules = #open
* qualification[moh-instructor].code.coding contains default-slice 1..1
* qualification[moh-instructor].code.coding[default-slice] = $pract-certificate-type-moh#13
* qualification[moh-instructor].code.coding[default-slice].system 1..1
* qualification[moh-instructor].code.coding[default-slice].system = $pract-certificate-type-moh (exactly)
* qualification[moh-instructor].code.coding[default-slice].code 1..1
* qualification[moh-instructor].code.coding[default-slice].code = #13 (exactly)
* qualification[moh-instructor].code.coding[default-slice].display = "תעודת מדריך" (exactly)
* qualification[moh-instructor].identifier 0..*
* qualification[moh-instructor].identifier.system 1..1
* qualification[moh-instructor].identifier.system = $practitioner-instructor (exactly)
* qualification[moh-instructor].identifier.system ^short = "Israeli MoH expertise certificate URI"
* qualification[moh-instructor].identifier ^example.valueString = "108-12345"
* qualification[moh-instructor].identifier ^example.label = "Valid MOH expertise certification number"
* qualification[moh-instructor].identifier.value ^example.valueString = "108-12345"
* qualification[moh-instructor].identifier.value ^example.label = "Valid MOH expertise certification number"
* qualification[moh-instructor].identifier.value 1..1
* qualification[moh-instructor].identifier.value obeys identifier-digits
* qualification[moh-instructor].identifier.value ^short = "Certificate number"
* qualification[moh-instructor].issuer only Reference(ILCoreOrganization)
* qualification[moh-instructor].extension contains
   $ext-qualification-practice named practice 1..1
* qualification[moh-instructor].extension[practice].value[x] only CodeableConcept
* qualification[moh-instructor].extension[practice].valueCodeableConcept from $vs-practitioner-expertise
* qualification[moh-instructor].extension[practice] ^example.valueCodeableConcept = $practitioner-expertise#1 "רפואה פנימית"
* qualification[moh-instructor].extension[practice] ^example.label = "Valid Example"

* qualification[moh-nurse-temp-permit] ^short = "היתר זמני"
* qualification[moh-nurse-temp-permit] ^definition = """The slice is used for temporary licenses (temporary permit to practice nursing) for nurses only.\n 
<mark>Note:</mark> identifier  (מספר רישיון זמני למקצועות הסיעוד) is mandatory and SHOULD be a sequence number only. I.e., \<temporary-permit-certificate-number\>"""
* qualification[moh-nurse-temp-permit].code = $pract-certificate-type-moh#102
* qualification[moh-nurse-temp-permit].code.coding 1..*
* qualification[moh-nurse-temp-permit].code.coding ^slicing.discriminator[0].type = #pattern
* qualification[moh-nurse-temp-permit].code.coding ^slicing.discriminator[0].path = "$this"
* qualification[moh-nurse-temp-permit].code.coding ^slicing.rules = #open
* qualification[moh-nurse-temp-permit].code.coding contains default-slice 1..1
* qualification[moh-nurse-temp-permit].code.coding[default-slice] = $pract-certificate-type-moh#102
* qualification[moh-nurse-temp-permit].code.coding[default-slice].system 1..1
* qualification[moh-nurse-temp-permit].code.coding[default-slice].system = $pract-certificate-type-moh (exactly)
* qualification[moh-nurse-temp-permit].code.coding[default-slice].code 1..1
* qualification[moh-nurse-temp-permit].code.coding[default-slice].code = #102 (exactly)
* qualification[moh-nurse-temp-permit].code.coding[default-slice].display = "היתר זמני" (exactly)
* qualification[moh-nurse-temp-permit].identifier 1..*
* qualification[moh-nurse-temp-permit].identifier.system 1..1
* qualification[moh-nurse-temp-permit].identifier.system = $nurse-license-moh (exactly)
* qualification[moh-nurse-temp-permit].identifier.system ^short = "Israeli MoH nurse certificate URI"
* qualification[moh-nurse-temp-permit].identifier.value 1..1
* qualification[moh-nurse-temp-permit].identifier.value obeys identifier-digits
* qualification[moh-nurse-temp-permit].identifier.value ^short = "Certificate number"
* qualification[moh-nurse-temp-permit].identifier ^example.valueString = "12345"
* qualification[moh-nurse-temp-permit].identifier ^example.label = "Valid nurse registration certificate number example"
* qualification[moh-nurse-temp-permit].identifier.value ^example.valueString = "12345"
* qualification[moh-nurse-temp-permit].identifier.value ^example.label = "Valid nurse registration certificate number example"
* qualification[moh-nurse-temp-permit].issuer only Reference(ILCoreOrganization)
* qualification[moh-nurse-temp-permit].extension contains
   $ext-qualification-practice named practice 0..1
* qualification[moh-nurse-temp-permit].extension[practice].value[x] only CodeableConcept
* qualification[moh-nurse-temp-permit].extension[practice].valueCodeableConcept from $vs-practitioner-nurse-profession
* qualification[moh-nurse-temp-permit].extension[practice] ^example.valueCodeableConcept = $practitioner-profession-moh#102 "אח/ות מעשי/ת" 
* qualification[moh-nurse-temp-permit].extension[practice] ^example.label = "Valid Example" 

* qualification[moh-nurse-registration-certificate] ^short = "תעודת רישום"
* qualification[moh-nurse-registration-certificate] ^definition = """The slice is used for permanent licenses (permanent registration certificate to practice nursing) <b>for nurses only</b>.\n
<mark>Note:</mark> identifier (מספר רישיון קבוע למקצועות הסיעוד) is <b>mandatory</b> and SHOULD be a sequence number only. I.e., \<permanent-registration-certificate-number\> """
* qualification[moh-nurse-registration-certificate].code = $pract-certificate-type-moh#26
* qualification[moh-nurse-registration-certificate].code.coding 1..*
* qualification[moh-nurse-registration-certificate].code.coding ^slicing.discriminator[0].type = #pattern
* qualification[moh-nurse-registration-certificate].code.coding ^slicing.discriminator[0].path = "$this"
* qualification[moh-nurse-registration-certificate].code.coding ^slicing.rules = #open
* qualification[moh-nurse-registration-certificate].code.coding contains default-slice 1..1
* qualification[moh-nurse-registration-certificate].code.coding[default-slice] = $pract-certificate-type-moh#26
* qualification[moh-nurse-registration-certificate].code.coding[default-slice].system 1..1
* qualification[moh-nurse-registration-certificate].code.coding[default-slice].system = $pract-certificate-type-moh (exactly)
* qualification[moh-nurse-registration-certificate].code.coding[default-slice].code 1..1
* qualification[moh-nurse-registration-certificate].code.coding[default-slice].code = #26 (exactly)
* qualification[moh-nurse-registration-certificate].code.coding[default-slice].display = "תעודת רישום" (exactly)
* qualification[moh-nurse-registration-certificate].identifier 1..*
* qualification[moh-nurse-registration-certificate].identifier.system 1..1
* qualification[moh-nurse-registration-certificate].identifier.system = $nurse-license-moh (exactly)
* qualification[moh-nurse-registration-certificate].identifier.system ^short = "Israeli MoH nurse certificate URI"
* qualification[moh-nurse-registration-certificate].identifier.value 1..1
* qualification[moh-nurse-registration-certificate].identifier ^example.valueString = "12345"
* qualification[moh-nurse-registration-certificate].identifier ^example.label = "Valid nurse registration certificate number example"
* qualification[moh-nurse-registration-certificate].identifier.value ^example.valueString = "12345"
* qualification[moh-nurse-registration-certificate].identifier.value ^example.label = "Valid nurse registration certificate number example"
* qualification[moh-nurse-registration-certificate].identifier.value obeys identifier-digits
* qualification[moh-nurse-registration-certificate].identifier.value ^short = "Certificate number"
* qualification[moh-nurse-registration-certificate].issuer only Reference(ILCoreOrganization)
* qualification[moh-nurse-registration-certificate].extension contains
   $ext-qualification-practice named practice 0..1
* qualification[moh-nurse-registration-certificate].extension[practice].value[x] only CodeableConcept
* qualification[moh-nurse-registration-certificate].extension[practice].valueCodeableConcept from $vs-practitioner-nurse-profession
* qualification[moh-nurse-registration-certificate].extension[practice] ^example.valueCodeableConcept = $practitioner-profession-moh#101 "אח/ות מוסמכ/ת"
* qualification[moh-nurse-registration-certificate].extension[practice] ^example.label = "Valid Example" 

* qualification[moh-nurse-advanced-course] ^short = "תעודת רישום קורס ע ב"
* qualification[moh-nurse-advanced-course] ^definition = """The slice is used for advanced course certifications (by healthcare specialty) for nurses only.\n
<mark>Note:</mark> identifier (מספר תעודת קורס על בסיסי למקצועות הסיעוד) is <b>not mandatory</b> and if exists, SHOULD include the advanced-course-code, a dash (-) and permanent-registration-certificate-number (nurse license-number as the moh-nurse-registration-certificate identifier) <advanced-course-code>-<permanent-registration-certificate-number> where advanced-course-code is a value from <a href="https://simplifier.net/ilcore/practitioner-advanced-course-moh-duplicate-2">PractitionerAdvancedCourseMoH</a>. It means the identifier for different advanced course certificates for the same nurse will not be unique, but the practice-code will show the difference between them."""
* qualification[moh-nurse-advanced-course].code = $pract-certificate-type-moh#110
* qualification[moh-nurse-advanced-course].code.coding 1..*
* qualification[moh-nurse-advanced-course].code.coding ^slicing.discriminator[0].type = #pattern
* qualification[moh-nurse-advanced-course].code.coding ^slicing.discriminator[0].path = "$this"
* qualification[moh-nurse-advanced-course].code.coding ^slicing.rules = #open
* qualification[moh-nurse-advanced-course].code.coding contains default-slice 1..1
* qualification[moh-nurse-advanced-course].code.coding[default-slice] = $pract-certificate-type-moh#110
* qualification[moh-nurse-advanced-course].code.coding[default-slice].system 1..1
* qualification[moh-nurse-advanced-course].code.coding[default-slice].system = $pract-certificate-type-moh (exactly)
* qualification[moh-nurse-advanced-course].code.coding[default-slice].code 1..1
* qualification[moh-nurse-advanced-course].code.coding[default-slice].code = #110 (exactly)
* qualification[moh-nurse-advanced-course].code.coding[default-slice].display = "תעודת רישום קורס ע ב" (exactly)
* qualification[moh-nurse-advanced-course].identifier 0..*
* qualification[moh-nurse-advanced-course].identifier.system 1..1
* qualification[moh-nurse-advanced-course].identifier.system = $nurse-advanced-course (exactly)
* qualification[moh-nurse-advanced-course].identifier.system ^short = "Israeli MoH nurse advanced course certificate URI"
* qualification[moh-nurse-advanced-course].identifier.value 1..1
* qualification[moh-nurse-advanced-course].identifier.value obeys identifier-dash
* qualification[moh-nurse-advanced-course].identifier.value ^short = "Certificate number"
* qualification[moh-nurse-advanced-course].identifier ^example.valueString = "108-12345"
* qualification[moh-nurse-advanced-course].identifier ^example.label = "Valid Nurse advanced course certifiaction number"
* qualification[moh-nurse-advanced-course].identifier.value ^example.valueString = "108-12345"
* qualification[moh-nurse-advanced-course].identifier.value ^example.label = "Valid Nurse advanced course certifiaction number"
* qualification[moh-nurse-advanced-course].issuer only Reference(ILCoreOrganization)
* qualification[moh-nurse-advanced-course].extension contains
   $ext-qualification-practice named practice 1..1
* qualification[moh-nurse-advanced-course].extension[practice].value[x] only CodeableConcept
* qualification[moh-nurse-advanced-course].extension[practice].valueCodeableConcept from $vs-practitioner-advanced-course

* qualification[molsa-practitioner-sw-license].code = $pract-certificate-type-molsa#SW
* qualification[molsa-practitioner-sw-license] ^short = "רישיון עבודה סוציאלית"
* qualification[molsa-practitioner-sw-license] ^definition = "Social-worker license issued by Israeli Ministry of Labor, Social Affairs and Social Services"
* qualification[molsa-practitioner-sw-license].code.coding 1..*
* qualification[molsa-practitioner-sw-license].code.coding ^slicing.discriminator[0].type = #pattern
* qualification[molsa-practitioner-sw-license].code.coding ^slicing.discriminator[0].path = "$this"
* qualification[molsa-practitioner-sw-license].code.coding ^slicing.rules = #open
* qualification[molsa-practitioner-sw-license].code.coding contains default-slice 1..1
* qualification[molsa-practitioner-sw-license].code.coding[default-slice] = $pract-certificate-type-molsa#SW
* qualification[molsa-practitioner-sw-license].code.coding[default-slice].system 1..1
* qualification[molsa-practitioner-sw-license].code.coding[default-slice].system = $pract-certificate-type-molsa (exactly)
* qualification[molsa-practitioner-sw-license].code.coding[default-slice].code 1..1
* qualification[molsa-practitioner-sw-license].code.coding[default-slice].code = #SW (exactly)
* qualification[molsa-practitioner-sw-license].code.coding[default-slice].display = "רישיון עבודה סוציאלית" (exactly)
* qualification[molsa-practitioner-sw-license].identifier 1..*
* qualification[molsa-practitioner-sw-license].identifier.system 1..1
* qualification[molsa-practitioner-sw-license].identifier.system = $practitioner-license-molsa (exactly)
* qualification[molsa-practitioner-sw-license].identifier.system ^short = "Israeli MoLSA social-worker License URI"
* qualification[molsa-practitioner-sw-license].identifier.value 1..1
* qualification[molsa-practitioner-sw-license].identifier.value ^short = "License number"
* qualification[molsa-practitioner-sw-license].issuer only Reference(ILCoreOrganization)
* qualification[molsa-practitioner-sw-license].extension contains
   $ext-qualification-practice named practice 1..1
* qualification[molsa-practitioner-sw-license].extension[practice].value[x] only CodeableConcept
* qualification[molsa-practitioner-sw-license].extension[practice].valueCodeableConcept = $practitioner-profession-moh#45 "עבודה סוציאלית" (exactly)

* qualification.issuer only Reference(ILCoreOrganization)