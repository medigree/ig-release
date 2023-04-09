ValueSet: VaccineProductCode
Id: vaccine-product-code
Title: "Vaccine Product Codes"
Description: "A list of codes for vaccine products from atc, YARPA and cvx codeSystems"
* ^url = $vs-vaccine-product-code
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* include codes from system $cvx
* include codes from system $atc where concept is-a #J07
* include codes from system $yarpa-medication-code