Instance: pna-national-id
InstanceOf: NamingSystem
Usage: #definition 

* name = "Palestinian National Identifier - Individual"
* status = #active
* kind = #identifier
* date = "2021-07-28"
* publisher = "Israeli Ministry of Health"
* responsible = "Israeli Ministry of Interior"
* type = $id-type#NI "National unique individual identifier"
* type.text = "Palestinian Person Identifier"
* description = "Palestinian Identifier number. A nine-digit number"
* jurisdiction[0] = urn:iso:std:iso:3166#IL
* usage = "Used for identifying palestinian patients, practitioners and relatedPersons"
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://fhir.health.gov.il/identifier/pna-national-id"
* uniqueId[0].preferred = true
* uniqueId[1].type = #uri
* uniqueId[1].value = "http://fhir.health.org.il/identifier/pna-national-id"
* uniqueId[1].comment = "This value was mistakenly set in the first drafts of ILCore"
* uniqueId[1].preferred = false
* uniqueId[1].period.end = "2021-07-11"