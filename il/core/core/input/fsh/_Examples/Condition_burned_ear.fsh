Instance: condition-burnt-ear
InstanceOf: ILCoreCondition
Usage: #example
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category[0].coding[0] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[0].coding[1] = $sct#439401001 "Diagnosis"
* severity = $sct#24484000 "Severe"
* code = $sct#39065001 "Burn of ear"
* code.text = "Burnt Ear"
* bodySite[0] = $sct#49521004 "Left external ear structure"
* bodySite[0].text = "Left Ear"
* subject.reference = "Patient/patient-with-israeli-id"
* onsetDateTime = "2012-05-24"

