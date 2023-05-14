ValueSet: VaccineCode
Id: vaccine-code
Title: "Vaccine Codes"
Description: "A list of SNOMED codes for vaccines"
* ^url = $vs-vaccine-code
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* include codes from system $sct where concept is-a #787859002