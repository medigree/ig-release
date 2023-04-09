ValueSet: ReasonNotDone
Id: reason-not-done
Title: "statusReason codes for Immunization profile"
Description: "Codes from SNOMED CT describing reasons for Immnization not taking place, for statusCode"
* ^url = $vs-reason-not-done
* ^status = #draft
* ^version = "0.11.0"
* ^experimental = false

* $sct#281399006 "Did not attend"
* $sct#213257006 "Generally unwell"
* $sct#310376006 "Immunisation consent not given"
* $sct#266758009 "Immunisation contraindicated"
* $sct#365861007 "Finding of immune status"
* $sct#182856006 "Drug not available - out of stock"
* $sct#871879005 "Vaccination hesitancy by parent"
* $sct#871868000 "Vaccination hesitancy by patient"