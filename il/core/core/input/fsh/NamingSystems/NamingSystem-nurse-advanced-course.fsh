Instance: nurse-advanced-course
InstanceOf: NamingSystem
Usage: #definition

* name = "Israeli Ministry of Health nurse advanced course"
* status = #active
* kind = #identifier
* date = "2022-12-08"
* publisher = "Israeli Ministry of Health"
* responsible = "Israeli MoH"
* type = $id-type#AC "Accreditation/Certification Identifier"  
* type.text = "Nurse advanced course accreditation number" 
* description = "Identifies RN advanced course according to Israeli MoH"
* jurisdiction[0] = urn:iso:std:iso:3166#IL
* usage = """SHOULD include the advanced-course-code, a dash (-) and permanent-registration-certificate-number (nurse license-number as the moh-nurse-registration-certificate identifier) <advanced-course-code>-<permanent-registration-certificate-number> where advanced-course-code is a value from <a href="https://simplifier.net/ilcore/practitioner-advanced-course-moh-duplicate-2">PractitionerAdvancedCourseMoH</a>. It means the identifier for different advanced course certificates for the same nurse will not be unique, but the practice-code will show the difference between them."""
* uniqueId[0].type = #uri
* uniqueId[0].value = $nurse-advanced-course
* uniqueId[0].preferred = true