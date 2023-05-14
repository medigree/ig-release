Instance: practitionerRole-gp
InstanceOf: ILCorePractitionerRole
Usage: #example

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">רופאת משפחה</div>"
* text.status = #generated

// * identifier[prac-lic].system = $practitioner-license-moh
// * identifier[prac-lic].value = "1-22947"
// * name.prefix = "דר'"
// * name.family = "גרינפלד"
// * name.given = "דיאנה"
// * name.text = "דר' גרינפלד דיאנה"
* active = true
* practitioner.reference = "Practitioner/practitioner-md"
* location.reference = "Location/location-hospital-unit"
* telecom[0].system = #phone
* telecom[0].value = "04-6421420"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "DG@example.com"
* availableTime.availableStartTime = "09:00:00"
* availableTime.availableEndTime = "17:00:00"


