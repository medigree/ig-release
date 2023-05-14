Extension: ProcedureReference
Id: ext-procedure-reference
Title: "Ext: Procedure Reference"
Description: "Extension: Procedure Reference"

* ^url = $ext-procedure-reference
* ^version = "0.11.0"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "MedicationRequest.reasonRefference"

* value[x] only Reference(ILCoreProcedure)
