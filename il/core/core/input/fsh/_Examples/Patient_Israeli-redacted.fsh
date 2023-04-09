Instance: patient-israeli-redacted
InstanceOf: ILCorePatient
Usage: #example
* meta.tag = $v3-ObservationValue#REDACTED "redacted"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient with missing</div>"
* text.status = #generated

* identifier[0].system = $il-id
* identifier[0].value = "000000018"
* extension[hmo].valueCodeableConcept = $payer#104 "קופת חולים מאוחדת"
* extension[hmo].valueCodeableConcept.text = "קופת חולים מאוחדת"
* active = true
* name.family.extension[$data-absent-reason].valueCode = #masked
* name.given.extension[$data-absent-reason].valueCode = #masked
* name.extension[dataAbsentReason].valueCode = #masked
* gender = #unknown
* gender.extension[$data-absent-reason].valueCode = #masked
* birthDate.extension[$data-absent-reason].valueCode = #masked
* deceasedBoolean = false

