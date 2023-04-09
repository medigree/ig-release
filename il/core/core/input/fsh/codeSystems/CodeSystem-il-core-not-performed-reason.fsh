CodeSystem: ILCoreNotPerformedReason
Id: il-core-not-performed-reason
Title: "IL Core Not Perfomed Reasons"
Description: "A list of codes for reasons an observation was not made"
* ^status = #draft
* ^version = "0.11.0"
* ^url = $not-performed-reason
* ^content = #complete
* ^caseSensitive = false
* ^experimental = false
* ^valueSet = $vs-not-performed-reason
* #not-performed-medical-reason "not performed medical reason" "The value is not available because the observation procedure was not performed due to Medical Reason"
* #not-performed-administrative-reason "not performed administrative reason" "The value is not available because the observation procedure was not performed due to Administrative Reason, e.g., observation cannot be measured because of a remote visit (telemedicine), absent practitioner (patient need EKG but no technician available), etc."
* #not-performed-equipment-reason "not performed equipment reason" "The value is not available because the observation procedure was not performed due to Equipment Reason, e.g., EKG malfunction, blood pressure monitor out of batteries, autoscope only available in adult size and the patient is two years old, etc"
* #not-performed-patient-reason "not performed patient reason" "The value is not available because the observation procedure was not performed due to Patient Reason e.g., patient refused to do the test, patient didn’t come etc."