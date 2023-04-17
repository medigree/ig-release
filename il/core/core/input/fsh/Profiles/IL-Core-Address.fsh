
Profile: ILCoreAddress
Parent: Address
Id: il-core-address
Title: "ILCore Address Profile"
Description: "Adds several Israel-specific extensions and constraints, plus geocode extension to the Address datatype"

* ^url = $ILAddress
* ^version = "0.11.0"
* ^status = #draft
* ^date = "2021-02-25"
* ^publisher = "Israeli Ministry of Health"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "amos@outburn.co.il"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#IL
* ^copyright = "Israeli Ministry of Health" 
* . obeys mikud-chk

* extension contains
    $geolocation named geolocation 0..1 and
    $ext-statistical-area named statArea 0..*
* extension[geolocation] ^short = "geolocation"
* extension[geolocation] ^definition = "An absolute geographic location"
* extension[statArea] ^short = "Extension: Statistical Area"
* extension[statArea] ^definition = "Extension: Statistical Area. Subdivisions of cities for statistical purposes"

* line 0..* MS
* line ^example.valueString = "הירקון 1א' דירה 4 תל אביב"
* line ^example.label = "Valid Example"
* line.extension contains
    $street-name named streetName 0..1  MS and
    $house-num named houseNumber 0..1 MS and
    $bldng-num-suffx named buildingNumberSuffix 0..1 and
    $unit-id named unitId 0..1 and
    $post-box named postBox 0..1
* line.extension[streetName] ^short = "Extension: street name"
* line.extension[streetName] ^definition = "The street name of the address"
* line.extension[houseNumber] ^short = "Extension: house number"
* line.extension[houseNumber] ^definition = "The number of a building, house or lot alongside the street. Also known as \"primary street number\". This does not number the street but rather the building."
* line.extension[postBox] ^short = "Extension: post box"
* line.extension[postBox] ^definition = "The post box number of the address"
* line.extension[buildingNumberSuffix] ^short = "Extension: building suffix"
* line.extension[buildingNumberSuffix] ^definition = "The building suffix (כניסה)" 
* line.extension[unitId] ^short = "unit id"
* line.extension[unitId] ^definition = "The unit ID e.g., Apt#, Room" 

* city 0..1 MS
* city ^example.valueString = "ירושלים"
* city ^example.label = "Valid Example"
* city.extension contains 
    $ext-ct named cityCode 0..1
* city.extension[cityCode] ^short = "city code"
* city.extension[cityCode] ^definition = "A coded representation of the city, town or settlement"

* postalCode 0..1 MS
* postalCode ^example.valueString = "6964101"
* postalCode ^example.label = "Valid Example"
* period 0..1 MS
* country from $vs-jurisdiction