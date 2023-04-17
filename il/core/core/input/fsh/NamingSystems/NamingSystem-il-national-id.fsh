Instance: il-national-id
InstanceOf: NamingSystem
Usage: #definition

* name = "Israeli National Identifier - Individual"
* status = #active
* kind = #identifier
* date = "2021-07-28"
* publisher = "Israeli Ministry of Health"
* responsible = "Israeli Ministry of Interior"
* type = $id-type#NI "National unique individual identifier"
* type.text = "National Person Identifier"
* description = "Israeli Identifier number issued for all citizens and permanent residents. A nine-digit number including a check-digit"
* jurisdiction[0] = urn:iso:std:iso:3166#IL
* usage = "Used in Israel for identifying patients, practitioners and relatedPersons"
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://fhir.health.gov.il/identifier/il-national-id"
* uniqueId[0].preferred = true
* uniqueId[1].type = #uri
* uniqueId[1].value = "http://fhir.health.org.il/identifier/il-national-id"
* uniqueId[1].comment = "This value was mistakenly set in the first drafts of ILCore"
* uniqueId[1].preferred = false
* uniqueId[1].period.end = "2021-07-11"