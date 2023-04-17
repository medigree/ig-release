Extension: HebrewDate
Id: ext-hebrew-date
Title: "Ext: Hebrew Date"
Description: "Extension: Allows the use of Hebrew dates"

* ^url = $ext-hebrew-date
* ^version = "0.11.0"
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "date"
* ^context[1].type = #element
* ^context[1].expression = "dateTime"
* . 0..*
* . ^comment = "Best practice is to use the following Hebrew date format, as found in [Wikipedia](https://he.wikipedia.org/wiki/%D7%AA%D7%91%D7%A0%D7%99%D7%AA:%D7%AA%D7%90%D7%A8%D7%99%D7%9A_%D7%A2%D7%91%D7%A8%D7%99_%D7%A0%D7%95%D7%9B%D7%97%D7%99)"
* extension contains
    display 0..1 and
    day 0..1 and
    month 0..1 and
    year 0..1
* extension[display] only Extension
* extension[display] ^short = "date display"
* extension[display] ^definition = "Full display of Hebrew date"
* extension[display].url 1..1
* extension[display].url only uri
* extension[display].url = "display" (exactly)
* extension[display].value[x] 1..1
* extension[display].value[x] only string
* extension[display].valueString ^example.valueString = "ה' באייר התש\"ח"
* extension[display].valueString ^example.label = "Valid Example"
* extension[day] only Extension
* extension[day] ^short = "Day"
* extension[day] ^definition = "Code for Hebrew day of month"
* extension[day].url 1..1
* extension[day].url only uri
* extension[day].url = "day" (exactly)
* extension[day].value[x] 1..1
* extension[day].value[x] only CodeableConcept
* extension[day].valueCodeableConcept from $vs-hebrew-date-day (required)
* extension[day].valueCodeableConcept ^example.valueCodeableConcept = $hebrew-date-day#5 "ה'"
* extension[day].valueCodeableConcept ^example.label = "Valid Example"
* extension[month] only Extension
* extension[month] ^short = "Month"
* extension[month] ^definition = "Code for Hebrew month"
* extension[month].url 1..1
* extension[month].url only uri
* extension[month].url = "month" (exactly)
* extension[month].value[x] 1..1
* extension[month].value[x] only CodeableConcept
* extension[month].valueCodeableConcept from $vs-hebrew-date-month (required)
* extension[month].valueCodeableConcept ^example.valueCodeableConcept = $hebrew-date-month#8 "אייר"
* extension[month].valueCodeableConcept ^example.label = "Valid Example"
* extension[year] only Extension
* extension[year] ^short = "Year"
* extension[year] ^definition = "Hebrew year"
* extension[year].url 1..1
* extension[year].url only uri
* extension[year].url = "year" (exactly)
* extension[year].value[x] 1..1
* extension[year].value[x] only string
* extension[year].valueString ^comment = "מומלץ לרשום שנה עברית תקינה לפי תבנית זו : ה'תשפ\"א"
* extension[year].valueString ^example.valueString = "התש\"ח"
* extension[year].valueString ^example.label = "Valid Example"