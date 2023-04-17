
// Instance of the ILCoreCondition resource, representing a diagnosis of type 1 diabetes
Instance: condition-type-1-diabetes
InstanceOf: ILCoreCondition
// This instance is just an example, not meant for actual use
Usage: #example

// The clinical status of the condition
* clinicalStatus = $condition-clinical#active
// The verification status of the condition
* verificationStatus = $condition-ver-status#confirmed

// The category of the condition
* category[0].coding[0] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[0].coding[1] = $sct#439401001 "Diagnosis"

// The severity of the condition
* severity = $sct#24484000 "Severe"

// The code for the condition (type 1 diabetes)
* code = $sct#46635009 "Type 1 diabetes mellitus"
* code.text = "Type 1 Diabetes"

// The body site affected by the condition
* bodySite[0] = $sct#181277001 "Entire pancreas"
* bodySite[0].text = "Pancreas"

// The patient with the condition
* subject.reference = "Patient/patient-with-israeli-id"

// The onset date of the condition
* onsetDateTime = "2012-05-24"
