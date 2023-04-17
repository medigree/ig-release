ValueSet:  ILCoreMedicationRequestCourseOfTherapy 
Id: il-core-medication-request-course-of-therapy
Title: "ILCore Medication Request Course Of Therapy "
Description: "Codes for Medication Request Course Of Therapy"

* ^url = $vs-il-core-medication-request-course-of-therapy
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* include codes from system http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy
* include $sct#422114001 "Once - dosing instruction fragment (qualifier value)"
* include codes from system $course-of-therapy
