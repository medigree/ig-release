Instance: practitioner-license
InstanceOf: NamingSystem
Usage: #definition

* name = "Israeli Ministry of Health practitioner license"
* status = #active
* kind = #identifier
* date = "2022-12-08"
* publisher = "Israeli Ministry of Health"
* responsible = "Israeli MoH"
* type = $id-type#MD "Medical License number"  
* type.text = "Medical License number" 
* description = "Identifies Licensed medical proffesionals according to Israeli MoH"
* jurisdiction[0] = urn:iso:std:iso:3166#IL
* usage = """Should include the profession-code, a dash (-) and a sequence number. I.e., \<profession-code\>-\<profession-certificate-number\> where profession-code is a value of <a href=\"https://simplifier.net/ilcore/practitioner-profession-moh-duplicate-2\">PractitionerProfessionMoH</a>"""
* uniqueId[0].type = #uri
* uniqueId[0].value = $practitioner-license-moh
* uniqueId[0].preferred = true