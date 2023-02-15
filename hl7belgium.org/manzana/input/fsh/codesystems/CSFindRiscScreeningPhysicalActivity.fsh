CodeSystem: CSFindRiscScreeningPhysicalActivity
Id: cs-findRisc-screening-physicalActivity
Title: "Code System - FINDRISC screening physical activity"
Description: "Manzana findRisc screening question physical activity"
* ^version = "0.2.0"
* ^status = #draft
* ^date = "2022-06-24T14:28:28+02:00"
* ^publisher = "HL7 Belgium"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://example.com"
* ^jurisdiction = $m49.htm#056
* ^content = #complete
* ^count = 2
* #more-4-hours "Physical activity for more than 4 hours per week" "Physical activity time more than 4 hours per week"
* #more-4-hours ^designation[0].language = #en-GB
* #more-4-hours ^designation[=].value = "Physical activity time more than 4 hours per week"
* #more-4-hours ^designation[+].language = #nl-BE
* #more-4-hours ^designation[=].value = "Lichamelijke activiteitstijd meer dan 4 uur per week"
* #more-4-hours ^designation[+].language = #fr-BE
* #more-4-hours ^designation[=].value = "Temps d'activité physique plus de 4 heures par semaine"
* #less-4-hours "Physical activity for less than 4 hours per week" "Physical activity time less than 4 hours per week"
* #less-4-hours ^designation[0].language = #en-GB
* #less-4-hours ^designation[=].value = "Physical activity time smaller than 4 hours per week"
* #less-4-hours ^designation[+].language = #nl-BE
* #less-4-hours ^designation[=].value = "Lichamelijke activiteit gedurende minder dan 4 uur per week"
* #less-4-hours ^designation[+].language = #fr-BE
* #less-4-hours ^designation[=].value = "Activité physique moins de 4 heures par semaine"