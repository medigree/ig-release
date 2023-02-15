CodeSystem: CSFindRiscScreeningAge
Id: cs-findRisc-screening-age
Title: "Code System - FINDRISC screening age"
Description: "Manzana findRisc screening question patient age"
* ^version = "0.2.0"
* ^status = #draft
* ^date = "2022-06-24T14:28:28+02:00"
* ^publisher = "HL7 Belgium"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://example.com"
* ^jurisdiction = $m49.htm#056
* ^content = #complete
* ^caseSensitive = false
* ^experimental = false
* ^count = 4
* #0-44 "The patient age is between 0 and 44 years" "Patient age between 0 and 44 years (44 inclusive)"
* #0-44 ^designation[0].language = #en-GB
* #0-44 ^designation[=].value = "Patient age between 0 and 44 years (44 inclusive)"
* #0-44 ^designation[+].language = #nl-BE
* #0-44 ^designation[=].value = "Leeftijd patiënt tussen 0 en 44 jaar (44 inclusief)"
* #0-44 ^designation[+].language = #fr-BE
* #0-44 ^designation[=].value = "Âge du patient entre 0 et 44 ans (44 inclus)"
* #45-54 "The patient age is between 45 and 54 years" "Patient age between 45 and 54 years (54 inclusive)"
* #45-54 ^designation[0].language = #en-GB
* #45-54 ^designation[=].value = "Patient age between 45 and 54 years (54 inclusive)"
* #45-54 ^designation[+].language = #nl-BE
* #45-54 ^designation[=].value = "Leeftijd patiënt tussen 45 en 54 jaar (54 inclusief)"
* #45-54 ^designation[+].language = #fr-BE
* #45-54 ^designation[=].value = "Âge du patient entre 45 et 54 ans (54 inclus)"
* #55-64 "The patient age is between 55 and 64 years" "Patient age between 55 and 64 years (64 inclusive)"
* #55-64 ^designation[0].language = #en-GB
* #55-64 ^designation[=].value = "Patient age between 55 and 64 years (64 inclusive)"
* #55-64 ^designation[+].language = #nl-BE
* #55-64 ^designation[=].value = "Leeftijd patiënt tussen 55 en 64 jaar (64 inclusief)"
* #55-64 ^designation[+].language = #fr-BE
* #55-64 ^designation[=].value = "Âge du patient entre 55 et 64 ans (64 inclus)"
* #65- "The patient age is older than 65 years" "Patient age older than 65 years (65 inclusive)"
* #65- ^designation[0].language = #en-GB
* #65- ^designation[=].value = "Patient age older than 65 years (65 inclusive)"
* #65- ^designation[+].language = #nl-BE
* #65- ^designation[=].value = "Leeftijd van de patiënt ouder dan 65 jaar (inclusief 65)"
* #65- ^designation[+].language = #fr-BE
* #65- ^designation[=].value = "Âge du patient de plus de 65 ans (65 inclus)"