Instance: practitioner-instructor
InstanceOf: NamingSystem
Usage: #definition

* name = "Israeli Ministry of Health instructor accreditation"
* status = #active
* kind = #identifier
* date = "2022-12-08"
* publisher = "Israeli Ministry of Health"
* responsible = "Israeli MoH"
* type = $id-type#AC "Accreditation/Certification Identifier"
* type.text = "Practitioner-instructor expertise accreditation number" //Is this correct?
* description = "Identifies practitioner instructor according to Israeli MoH"
* jurisdiction[0] = urn:iso:std:iso:3166#IL
* usage = """SHOULD include a sequence number. I.e, \<expertise-certificate-number\>"""
* uniqueId[0].type = #uri
* uniqueId[0].value = $practitioner-expertise
* uniqueId[0].preferred = true