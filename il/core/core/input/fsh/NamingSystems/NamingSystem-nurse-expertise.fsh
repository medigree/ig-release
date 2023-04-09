Instance: nurse-expertise
InstanceOf: NamingSystem
Usage: #definition

* name = "Israeli Ministry of Health nurse expertise"
* status = #active
* kind = #identifier
* date = "2022-12-08"
* publisher = "Israeli Ministry of Health"
* responsible = "Israeli MoH"
* type = $id-type#AC "Accreditation/Certification Identifier"  
* type.text = "Nurse expertise accreditation number" 
* description = "Identifies RN expertise according to Israeli MoH"
* jurisdiction[0] = urn:iso:std:iso:3166#IL
* usage = """SHOULD include the expertise-code, a dash (-) and a sequence number. I.e, <expertise-code>-<expertise-certificate-number> where expertise-code is a value of <a href="https://simplifier.net/ilcore/practitioner-expertise-moh-duplicate-2">PractitionerExpertiseMoH</a>"""
* uniqueId[0].type = #uri
* uniqueId[0].value = $nurse-expertise
* uniqueId[0].preferred = true