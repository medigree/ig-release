Alias: $participant-type = http://terminology.hl7.org/CodeSystem/provenance-participant-type

Instance:  MyPeanutAllergy
//Name:  "PeanutAllergy"
InstanceOf: FoodAllergy
Title:   "PeanutAllergy"
Usage:  #example

* patient.identifier.value = https://nationalregistry.ww/nationalnumber#8936584955
* patient.display = "Paul Peters"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = 	http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed
* code = $SCT#91935009 "Allergy to peanut"
* recordedDate = "2021-07-28"

* participant[+]
  * function = $participant-type#enterer
  * actor.identifier.value = https://nationalregistry.ww/nationalnumber#8936584955
  * actor.display = "Daniel Davis"

* participant[+]
  * function = $participant-type#informant
  * actor.identifier.value = https://nationalregistry.ww/nationalnumber#8936584955
  * actor.display = "Paul Peters"