RuleSet: ExpandedCode(sys,code, display)
* expansion.contains[+].system = Canonical({sys})
* expansion.contains[=].code = #{code}
* expansion.contains[=].display = "{display}"

RuleSet: IExpandedCode(sys,code, display)
* ^expansion.contains[+].system = Canonical({sys})
* ^expansion.contains[=].code = #{code}
* ^expansion.contains[=].display = "{display}"



Alias: $ethnicity = urn:oid:2.16.840.1.114222.4.11.877




CodeSystem: HIVTransmissionRoute
Id: hiv-transmission-route
Description: "HIV Transmission Route codes"
Title: "HIV Transmission Route"
* #blood "MaleBlood" "Blood born infection"
* #sexual "Sexual Relations" "Sexual relationship transmission"
* #mother-child "Transgender" "Mother to Child transmission"
* #unidentified "Unidentified" "Unidentified"


CodeSystem:  PatientGender
Id: cs-patient-gender
Title: "Patient Gender"
Description: "The genders for patients"
* #male "Male" "Client identifies as female"
* #female "Female" "Client identifies as male"
* #transgender "Transgender" "Client identifies as transgender"
* #non-binary "Non-binary" "Client identifies in a non-binary way"


Instance: vs-patientgender
InstanceOf: ValueSet
Title: "Patient Gender"
Usage: #inline
Description:  "Valueset - patient genders"
* name = "Patient Gender"
* status = #draft
* expansion.timestamp = "2021-02-02"
* insert ExpandedCode(PatientGender, male, Male)
* expansion.contains[=].display.extension[$translation].extension[lang].valueCode = #vi-VN
* expansion.contains[=].display.extension[translation].extension[content].valueString = "nam"

* insert ExpandedCode(PatientGender, female, Female)
* expansion.contains[=].display.extension[$translation].extension[lang].valueCode = #vi-VN
* expansion.contains[=].display.extension[translation].extension[content].valueString = "nữ"
* insert ExpandedCode(PatientGender, transgender, Transgender)
* expansion.contains[=].display.extension[$translation].extension[lang].valueCode = #vi-VN
* expansion.contains[=].display.extension[translation].extension[content].valueString = "chuyển giới"

* insert ExpandedCode(PatientGender, non-binary, Non-binary)
* expansion.contains[=].display.extension[$translation].extension[lang].valueCode = #vi-VN
* expansion.contains[=].display.extension[translation].extension[content].valueString = "...?..."




ValueSet: VSEthnicity
Id: vs-ethnicity
Title: "Ethnicity"
Description:  "Ethnicity"
* ^status = #draft
* codes from system $ethnicity



Instance: hiv-risk-population
InstanceOf: ValueSet
Description: "HIV Risk Population codes"
Title: "HIV Risk Population"
Usage: #inline
* name = "HIVRiskPopulation"
* status = #draft


CodeSystem:  CSHIVRiskBehavior
Id: cs-hiv-risk-behavior
Title: "Risk Behavior"
Description: "CodeSystem - Behavior associated with risk of HIV transmission"
* #1 "Drug injection" "Drug injection"
* #2 "Sex workers" "Sexual relationship with sex workers or with sex buyers/clients (for money or drug)"
* #3 "MSM" "Men who have sex with men" 
* #4 "Multiple Sex Partners" "Multiple Sex Partners (NOT for money or drugs)"
* #5 "Others" "Other risks to oneself" 
/*
ValueSet: HIVRiskBehavior
Id: hiv-risk-behavior
Title: "Risk Behavior"
Description: "ValueSet - Behavior associated with risk of HIV transmission"
* include codes from system CSHIVRiskBehavior

*/

Instance: hiv-risk-behavior
InstanceOf: ValueSet
Description: "HIV Risk Behavior codes"
Title: "HIV Risk Behavior"
Usage: #inline
* name = "HIVRiskBehavior"
* status = #draft
* compose.include.system = Canonical(CSHIVRiskBehavior)



ValueSet: HIVTransmissionRoute
Id: hiv-transmission-route
Title: "HIV Transmission Route"
Description:  "HIV Transmission Route"
* ^status = #draft
* ^expansion.timestamp = "2021-02-02"
* insert IExpandedCode(HIVTransmissionRoute, blood, Blood born infection)
* insert IExpandedCode(HIVTransmissionRoute, sexual, Sexual relationship)
* insert IExpandedCode(HIVTransmissionRoute, mother, Mother to child)
* insert IExpandedCode(HIVTransmissionRoute, unidentified, Unidentified)


