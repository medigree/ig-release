CodeSystem: CSFindRiscScreeningBmi
Id: cs-findRisc-screening-bmi
Title: "Code System - FINDRISC screening BMI"
Description: "Manzana findRisc screening question patient BMI"
* ^version = "0.2.0"
* ^status = #draft
* ^date = "2022-06-24T14:28:28+02:00"
* ^publisher = "HL7 Belgium"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://example.com"
* ^jurisdiction = $m49.htm#056
* ^content = #complete
* ^count = 3
* #0-24 "The patient BMI is between 0 and 24" "Patient BMI between 0 and 24 (24 inclusive)"
* #0-24 ^designation[0].language = #en-GB
* #0-24 ^designation[=].value = "Patient BMI between 0 and 24 (24 inclusive)"
* #0-24 ^designation[+].language = #nl-BE
* #0-24 ^designation[=].value = "BMI van de patiënt tussen 0 en 24 (inclusief 24)"
* #0-24 ^designation[+].language = #fr-BE
* #0-24 ^designation[=].value = "IMC du patient entre 0 et 24 (24 inclus)"
* #25-30 "The patient BMI is between 25 and 30" "Patient BMI between 25 and 30 (30 inclusive)"
* #25-30 ^designation[0].language = #en-GB
* #25-30 ^designation[=].value = "Patient BMI between 25 and 30 (30 inclusive)"
* #25-30 ^designation[+].language = #nl-BE
* #25-30 ^designation[=].value = "BMI van de patiënt tussen 25 en 30 (inclusief 30)"
* #25-30 ^designation[+].language = #fr-BE
* #25-30 ^designation[=].value = "IMC du patient entre 25 et 30 (30 inclus)"
* #31- "The patient BMI is greater than 31" "Patient BMI greater than 31 (31 inclusive)"
* #31- ^designation[0].language = #en-GB
* #31- ^designation[=].value = "Patient BMI greater than 31 (31 inclusive)"
* #31- ^designation[+].language = #nl-BE
* #31- ^designation[=].value = "BMI van de patiënt hoger dan 31 (inclusief 31)"
* #31- ^designation[+].language = #fr-BE
* #31- ^designation[=].value = "IMC du patient supérieur à 31 (31 inclus)"