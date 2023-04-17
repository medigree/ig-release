Alias: $LL5005 = http://loinc.org/vs/LL5005-5
Extension: PatientImmigration
Id: ext-patient-immigration
Title: "Ext: Patient Immigration"
Description: "Extension: Immigration information for patient - for the purpose of this extension - immigration is an international movement of a person to a destination country in order to settle as permanent resident"

* ^url = $ext-patient-immigration
* ^version = "0.11.0"
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* . ^comment = "In case of an Aliyah (A jew immigrating to Israel), the destination should be 'IL' (Israel)"
* . 0..*
* extension contains
    origin 0..1 and
    destination 0..1 and
    date 0..1 and
    status 0..1
* extension[origin] only Extension
* extension[origin] ^short = "Country code of origin"
* extension[origin] ^definition = "Country code corresponding to origin country of patient."
* extension[origin].url only uri
* extension[origin].value[x] 1..
* extension[origin].value[x] only CodeableConcept
* extension[origin].valueCodeableConcept from $vs-jurisdiction (preferred)
* extension[origin].valueCodeableConcept ^example.valueCodeableConcept = urn:iso:std:iso:3166#US "United States of America"
* extension[origin].valueCodeableConcept ^example.label = "Valid Example"
* extension[destination] only Extension
* extension[destination] ^short = "Country code of destination"
* extension[destination] ^definition = "Country code corresponding to destination country of patient. When missing, destination country is assumed to be Israel"
* extension[destination].url only uri
* extension[destination].value[x] 1..
* extension[destination].value[x] only CodeableConcept
* extension[destination].valueCodeableConcept from $vs-jurisdiction (preferred)
* extension[destination].valueCodeableConcept ^example.valueCodeableConcept = urn:iso:std:iso:3166#IL "Israel"
* extension[destination].valueCodeableConcept ^example.label = "Valid Example"
* extension[date] only Extension
* extension[date] ^short = "Date of immigration"
* extension[date] ^definition = "Date of immigration."
* extension[date].url only uri
* extension[date].value[x] 1..
* extension[date].value[x] only date
* extension[date].valueDate ^example.valueDateTime = "2022-01-01"
* extension[date].valueDate ^example.label = "Valid Example"
* extension[status] only Extension
* extension[status] ^short = "Immigration status code"
* extension[status] ^definition = "Immigration status according to LOINC answer-list LL5005-5 [https://loinc.org/LL5005-5]"
* extension[status].url only uri
* extension[status].value[x] 1..
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from $LL5005 (required)
* extension[status].valueCodeableConcept ^example.valueCodeableConcept = $loinc#LA29155-1 "Naturalized citizen"
* extension[status].valueCodeableConcept ^example.label = "Valid Example"