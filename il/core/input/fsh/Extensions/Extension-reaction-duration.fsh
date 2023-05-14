Extension: ReactionDuration
Id: ext-reaction-duration
Title: "Reaction Duration"
Description: "Extension: Reaction Duration"

* ^url = $ext-reaction-duration
* ^version = "0.11.0"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "AllergyIntolerance.reaction"

* value[x] only Duration
* valueDuration ^example.valueDuration = 3 'a'
* valueDuration ^example.label = "Valid Example"