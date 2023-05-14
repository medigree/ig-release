Instance:   procedure-bloodwork-before-partial-parotidectomy
InstanceOf: ILCoreProcedure

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Bloodwork 24H before Partial Parotidectomy</div>"
* text.status = #generated
* status = #completed
* code.coding.system = $sct
* code.coding.code = #396550006
* code.coding.display = "Blood test (procedure)"
* performedDateTime = "2020-02-07"
* performedDateTime.extension[+].url = "http://hl7.org/fhir/StructureDefinition/relative-date"
* performedDateTime.extension[=].extension[+].url = "event"
* performedDateTime.extension[=].extension[=].valueReference.reference = "Procedure/partial-parotidectomy"
* performedDateTime.extension[=].extension[+].url = "relationship"
* performedDateTime.extension[=].extension[=].valueCode = #before-start
* performedDateTime.extension[=].extension[+].url = "offset"
* performedDateTime.extension[=].extension[=].valueDuration = 24 'h' "hour"
* subject.reference = "Patient/patient-with-israeli-id"
