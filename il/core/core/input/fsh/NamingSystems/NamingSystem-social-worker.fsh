Instance: social-worker
InstanceOf: NamingSystem
Usage: #definition

* name = "Israeli Ministry of Labor, Social Affairs and Social Services social-worker license"
* status = #active
* kind = #identifier
* date = "2022-12-08"
* publisher = "Israeli Ministry of Labor, Social Affairs and Social Services"
* responsible = "Israeli MoLSA"
* type = $id-type#AC "Accreditation/Certification Identifier"
* type.text = "Social-worker number" 
* description = "Identifies Licensed social worker practitioners according to Israeli MoLSA"
* jurisdiction[0] = urn:iso:std:iso:3166#IL
* usage = """Should include and a sequence number. I.e., \<social-worker-certificate-number\>"""
* uniqueId[0].type = #uri
* uniqueId[0].value = $practitioner-license-molsa
* uniqueId[0].preferred = true