ValueSet: ILCoreProcedureCode
Id: il-core-procedure-code
Title: "IL Core procedure Codes"
Description: "A list of codes for procedures for the IL Core"
* ^url = $vs-il-core-procedure-code
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* include codes from valueset $vs-icd9-cm-procedures
* include codes from valueset $vs-icd9-il-procedures
* include codes from system SNOMED_CT where concept is-a #71388002 "Procedure (procedure)"
* include codes from system SNOMED_CT where concept is-a #129125009 "Procedure with explicit context (situation)"
* include codes from system $medical-service-code-moh
* include codes from system $loinc
// * include codes from system http://ada.org/cdt  // CDT  -- might be added in the future

// * include codes from system http://www.ama-assn.org/go/cpt  // CPT - For now we decided to take it out

