Instance: nurse-registration
InstanceOf: NamingSystem
Usage: #definition

* name = "Israeli Ministry of Health nurse registration"
* status = #active
* kind = #identifier
* date = "2022-12-08"
* publisher = "Israeli Ministry of Health"
* responsible = "Israeli MoH"
* type = $id-type#RN "Registered Nurse Number"  
* type.text = "Registered Nurse Number" 
* description = "Identifies Registered Nurses according to Israeli MoH"
* jurisdiction[0] = urn:iso:std:iso:3166#IL
* usage = """SHOULD be a sequence number only. I.e., \<permanent-registration-certificate-number\>"""
* uniqueId[0].type = #uri
* uniqueId[0].value = $practitioner-license-moh
* uniqueId[0].preferred = true