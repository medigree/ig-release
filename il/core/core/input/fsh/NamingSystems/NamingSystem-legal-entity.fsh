Instance: legal-entity
InstanceOf: NamingSystem
Usage: #definition

* name = "Israeli Legal Entity"
* status = #active
* kind = #identifier
* date = "2021-07-28"
* publisher = "Israeli Ministry of Health"
* responsible = "Israeli Ministry of Justice"
* type = $id-type#XX "Organization identifier"
* type.text = "Organization identifier"
* description = "Israeli legal entity number"
* jurisdiction[0] = urn:iso:std:iso:3166#IL
* usage = "Used in Israel for identifying legal entities"
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://fhir.health.gov.il/identifier/legal-entity"
* uniqueId[0].preferred = true
* uniqueId[1].type = #uri
* uniqueId[1].value = "http://fhir.health.org.il/identifier/legal-entity"
* uniqueId[1].comment = "This value was mistakenly set in the first drafts of ILCore"
* uniqueId[1].preferred = false
* uniqueId[1].period.end = "2021-07-11"