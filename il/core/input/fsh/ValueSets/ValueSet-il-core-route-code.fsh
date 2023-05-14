ValueSet: ILCoreRouteCode
Id: il-core-route-code
Title: "IL Core Route Code"
Description: "A list of codes for Route for the IL Core"
* ^url = $vs-il-core-route-code
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* include codes from system $sct where concept is-a #284009009 "Route of administration value"
* include codes from system $sct where concept is-a #418307001 "Exposure to biological agent (event)"
