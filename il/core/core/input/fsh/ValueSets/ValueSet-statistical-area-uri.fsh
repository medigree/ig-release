ValueSet: StatisticalAreaUri
Id: statistical-area-uri
Title: "Israeli statistical area (אג\"ס) URI"
Description: "URI's of statistical area identifiers. NOTE: When using CBS-statistical area numbers, use as directed in the statistical-area NamingSystem - i.e.,: 4-digit citiy code + 3-digit statistical area code. See [here](https://simplifier.net/ilcore/cbs-statistical-area)"

* ^url = $vs-statistical-area-uri
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* $urn#http://fhir.health.gov.il/identifier/cbs-statistical-area "Israeli CBS statistical area code"