ValueSet: OrganizationType
Id: organization-type
Title: "Organization Type"
Description: "SNOMED based value set of recommended types of organizations and organization units"

* ^url = $vs-organization-type
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* include codes from system $sct where concept is-a #285201006 "Hospital environment (environment)"
* include codes from system $sct where concept is-a #43741000 "Site of care (environment)"
* include codes from system $sct where concept is-a #440654001 "Inpatient environment (environment)"
* include codes from system $sct where concept is-a #440655000 "Outpatient environment (environment)"
* include codes from system $sct where concept is-a #285141008 "Work environment (environment)"
* include codes from system $sct where concept is-a #264368004 "Military establishment (environment)"
* include codes from system $sct where concept is-a #419955002 "Residential institution (environment)"
* include codes from system $sct where concept is-a #257698009 "School (environment)"
* include codes from system $sct where concept is-a #257727001 "Warehouse (environment)"
