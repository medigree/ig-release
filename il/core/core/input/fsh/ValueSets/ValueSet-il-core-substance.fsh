ValueSet: ILCoreSubstance
Id: il-core-substance
Title: "IL Core Substance Codes"
Description: "A list of codes for Substances for the IL Core"
* ^url = $vs-il-core-substance
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* include codes from system $sct where concept is-a #105590001 "Substance (substance)"
* include codes from system $sct where concept is-a #373873005 "Pharmaceutical / biologic product"
* include codes from system $sct where concept is-a #373782009 "Diagnostic substance (substance)"
* include codes from system $sct where concept is-a #410942007 "Drug or medicament"
* include codes from system $sct where concept is-a #762766007 "Edible substance"
* include codes from system $sct where concept is-a #260769002 "Material (substance)"
* include codes from system $sct where concept is-a #115668003 "Biological substance (substance)"
* include codes from system $sct where concept is-a #91720002 "Body substance (substance)" 
* include codes from system $sct where concept is-a #255640000 "Biocide (substance)"
* include codes from system $sct where concept is-a #78621006 "Physical force"
* include codes from system $cvx
* include codes from valueset $vs-il-core-medication-code
