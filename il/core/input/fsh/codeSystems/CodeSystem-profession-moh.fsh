CodeSystem: PractitionerProfessionMoH
Id: practitioner-profession-moh
Title: "קוד מקצוע לעוסק בבריאות"
Description: "קוד מקצוע לעוסק בבריאות לפי רישוי משרד הבריאות"

* ^status = #draft
* ^version = "0.11.0"
* ^url = $practitioner-profession-moh
* ^content = #complete
* ^valueSet = $vs-practitioner-profession-moh
* ^caseSensitive = false
* ^experimental = false

* ^count = 57
* #-888 "לא ידוע" "ערך ברירת מחדל במקרה שהמידע שמגיע הוא NULL"
* #-888 ^property.code = #status
* #-888 ^property.valueCode = #deprecated
* #-999 "לא קיים" "ערך ברירת מחדל במקרה שערך המקצוע איננו רלוונטי או לא קיים מאחר ולא מדובר במקצוע רפואי"
* #-999 ^property.code = #status
* #-999 ^property.valueCode = #deprecated
* #1 "רפואה" "מקצוע הרפואה לו קיימים גם ערכי מומחיות Expertise"
* #1 ^property.code = #status
* #1 ^property.valueCode = #active
* #2 "רפואת שיניים" "מקצוע רפואת השינייים לו קיימים גם ערכי מומחיות Expertise"
* #2 ^property.code = #status
* #2 ^property.valueCode = #active
* #3 "רוקחים" "מקצוע הרוקחות לו קיימים גם ערכי התמחות Specialist (אך לא מומחיות Expertise)"
* #3 ^property.code = #status
* #3 ^property.valueCode = #active
* #4 "עוזרי רוקחים" "מקצוע עוזר רוקח ללא מומחיות או התמחות"
* #4 ^property.code = #status
* #4 ^property.valueCode = #active
* #5 "מיילדת" "מקצוע המיילדת שייך לתחום הסיעוד ללא מומחיות או התמחות"
* #5 ^property.code = #status
* #5 ^property.valueCode = #active
* #6 "שיננית" "מקצוע השיננית שייך לתחום רפואת השניים ללא מומחיות או התמחות"
* #6 ^property.code = #status
* #6 ^property.valueCode = #active
* #7 "טכנאי שיניים-מעשי" "מקצוע טכנאי שיניים מעשי שייך לתחום רפואת השיניים (מופרד ממקצוע טכנאי שיניים) וללא מומחיות או התמחות"
* #7 ^property.code = #status
* #7 ^property.valueCode = #active
* #8 "אופטומטריה" "מקצוע האופטומטריה ללא מומחיות או התמחות"
* #8 ^property.code = #status
* #8 ^property.valueCode = #active
* #9 "אורטופטיסט" "מקצוע האורטופטיסט שייך לתחום הפר\"א ללא מומחיות או התמחות"
* #9 ^property.code = #status
* #9 ^property.valueCode = #active
* #10 "פיזיותרפיה" "מקצוע הפיזיותרפיה שייך לתחום הפר\"א ללא מומחיות או התמחות"
* #10 ^property.code = #status
* #10 ^property.valueCode = #active
* #11 "דיאטן תזונאי" "מקצוע הדיאטן תזונאי שייך לתחום הפר\"א ללא מומחיות או התמחות"
* #11 ^property.code = #status
* #11 ^property.valueCode = #active
* #12 "כירופרקטיקה" "מקצוע הכירופרקטיקה שייך לתחום הפר\"א וללא מומחיות או התמחות"
* #12 ^property.code = #status
* #12 ^property.valueCode = #active
* #13 "קלינאי-תיקשורת" "מקצוע הקלינאי-תיקשורת שייך לתחום הפר\"א לו קיימים גם ערכי התמחות Specialist"
* #13 ^property.code = #status
* #13 ^property.valueCode = #active
* #14 "מרפא בעיסוק" "מקצוע מרפא בעיסוק שייך לתחום הפר\"א ללא מומחיות או התמחות"
* #14 ^property.code = #status
* #14 ^property.valueCode = #active
* #15 "ריפוי ביצירה והבעה" "מקצוע הריפוי ביצירה והבעה שייך לתחום הפר\"א ללא מומחיות או התמחות"
* #15 ^property.code = #status
* #15 ^property.valueCode = #active
* #16 "טכנאי-הנשמה (רספירטורי טרפיסט)" "מקצוע הטכנאי-הנשמה (רספירטורי טרפיסט) ללא מומחיות או התמחות"
* #16 ^property.code = #status
* #16 ^property.valueCode = #active
* #17 "עובד מעבדה רפואית" "מקצוע עובד מעבדה רפואית לו קיימים ערכי התמחות Specialist"
* #17 ^property.code = #status
* #17 ^property.valueCode = #active
* #18 "טכנולוגים אלקטרו פיסיולוגים" "מקצוע הטכנולוגים אלקטרו פיסיולוגים ללא מומחיות או התמחות"
* #18 ^property.code = #status
* #18 ^property.valueCode = #active
* #19 "רנטגנאים" "מקצוע הרנטגנאים ללא מומחיות או התמחות"
* #19 ^property.code = #status
* #19 ^property.valueCode = #active
* #20 "טכנולוגים ברפואה גרעינית" "מקצוע הטכנולוגים ברפואה גרעינית ללא מומחיות או התמחות"
* #20 ^property.code = #status
* #20 ^property.valueCode = #active
* #21 "טכנאי אולטרה-סאונד" "מקצוע הטכנולוגים ברפואה גרעינית ללא מומחיות או התמחות"
* #21 ^property.code = #status
* #21 ^property.valueCode = #active
* #22 "אורטוטיסטים - פרוטוטיסטים" "מקצוע האורטוטיסטים - פרוטוטיסטים ללא מומחיות או התמחות"
* #22 ^property.code = #status
* #22 ^property.valueCode = #active
* #23 "כירופודיסטים" "מקצוע הכירופודיסטים שייך לתחום הפר\"א ללא מומחיות או התמחות"
* #23 ^property.code = #status
* #23 ^property.valueCode = #active
* #24 "פודיאטריסטים" "מקצוע הפודיאטריסטים שייך לתחום הפר\"א ללא מומחיות או התמחות"
* #24 ^property.code = #status
* #24 ^property.valueCode = #active
* #25 "סייעת" "מקצוע הסייעת שייך לתחום השיניים ללא מומחיות או התמחות"
* #25 ^property.code = #status
* #25 ^property.valueCode = #active
* #26 "אקופונקטורה" "מקצוע האקופונקטורה שייך לתחום הפר\"א ללא מומחיות או התמחות"
* #26 ^property.code = #status
* #26 ^property.valueCode = #active
* #27 "פסיכולוג" "מקצוע הפסיכולוג שייך לתחום בריאות הנפש לו קיימים ערכי מומחיות Expertise וכמו כן ערכי התמחות Specialist"
* #27 ^property.code = #status
* #27 ^property.valueCode = #active
* #29 "קרימינולוגיה קלינית" "מקצוע הקרימינולוגיה קלינית שייך לתחום בריאות הנפש ללא מומחיות או התמחות"
* #29 ^property.code = #status
* #29 ^property.valueCode = #active
* #30 "גנטיקה קלינית- יעוץ גנטי" "מקצוע הגנטיקה קלינית- יעוץ גנטי לו קיימים ערכי מומחיות Expertise"
* #30 ^property.code = #status
* #30 ^property.valueCode = #active
* #31 "עובד מעבדה רפואית בכיר" "מקצוע העובד מעבדה רפואית בכיר מופרד מעובד מעבדה אחר לו קיימים ערכי התמחות Specialist"
* #31 ^property.code = #status
* #31 ^property.valueCode = #active
* #32 "מרפא שיניים" "מקצוע מרפא שיניים שייך לתחום רפואת השיניים ללא מומחיות או התמחות"
* #32 ^property.code = #status
* #32 ^property.valueCode = #active
* #33 "עובד מעבדה רפואי אקדמאי" "מקצוע העובד מעבדה רפואי אקדמאי (מופרד מעובד מעבדה אחר) ולו קיימים התמחות Specialist"
* #33 ^property.code = #status
* #33 ^property.valueCode = #active
* #34 "פיזיותרפיסט אקדמאי" "מקצוע הפיזיותרפיסט אקדמאי שייך לתחום הפר\"א (מופרד מפיזיותרפיה) ללא מומחיות או התמחות"
* #34 ^property.code = #status
* #34 ^property.valueCode = #active
* #35 "מפעיל מכונות לב ריאה" "מקצוע המפעיל מכונות לב ריאה ללא מומחיות או התמחות"
* #35 ^property.code = #status
* #35 ^property.valueCode = #active
* #36 "פרוסטטיקה אורטוטיקה והנעלה" "מקצוע פרוסטטיקה אורטוטיקה והנעלה ללא מומחיות או התמחות"
* #36 ^property.code = #status
* #36 ^property.valueCode = #active
* #37 "אוסטאופתיה" "מקצוע האוסטאופתיה שייך לתחום הפר\"א ללא מומחיות או התמחות"
* #37 ^property.code = #status
* #37 ^property.valueCode = #active
* #38 "טכנאי שיניים-מוסמך" "מקצוע הטכנאי שיניים-מוסמך שייך לתחום רפאת השיניים (מופרד מטכנאי שיניים אחר) ללא מומחיות או התמחות"
* #38 ^property.code = #status
* #38 ^property.valueCode = #active
* #39 "טכנאי שיניים-אומן" "מקצוע טכנאי שיניים-אומן שייך לתחום רפאת השיניים (מופרד מטכנאי שיניים אחר) ללא מומחיות או התמחות"
* #39 ^property.code = #status
* #39 ^property.valueCode = #active
* #40 "טכנאי שיניים-מומחה" "מקצוע טכנאי שיניים-מומחה שייך לתחום רפאת השיניים (מופרד מטכנאי שיניים אחר) ללא מומחיות או התמחות"
* #40 ^property.code = #status
* #40 ^property.valueCode = #active
* #41 "עוזרי רופאים" "מקצוע עוזרי רופאים ללא מומחיות או התמחות"
* #41 ^property.code = #status
* #41 ^property.valueCode = #active
* #42 "סוכן תיירות מרפא" 
* #42 ^property.code = #status
* #42 ^property.valueCode = #active
* #43 "פודיאטר מנתח" 
* #43 ^property.code = #status
* #43 ^property.valueCode = #active
* #44 "חברת תיירות מרפא" 
* #44 ^property.code = #status
* #44 ^property.valueCode = #active
* #45 "עבודה סוציאלית" 
* #45 ^property.code = #status
* #45 ^property.valueCode = #active
* #97 "אחר" "אחר"
* #97 ^property.code = #status
* #97 ^property.valueCode = #active
* #101 "אח/ות מוסמכ/ת" "מקצוע האח/ות מוסמכ/ת שייך לתחום הסיעוד לו קיימים ערכי מומחיות Expertise"
* #101 ^property.code = #status
* #101 ^property.valueCode = #active
* #102 "אח/ות מעשי/ת" "מקצוע האח/ות מעשי/ת שייך לתחום הסיעוד ללא מומחיות או התמחות"
* #102 ^property.code = #status
* #102 ^property.valueCode = #active
* #103 "אח/ות" "מקצוע אח/ות שייך לתחום הסיעוד ללא מומחיות או התמחות"
* #103 ^property.code = #status
* #103 ^property.valueCode = #active
* #109 "מעשי היתר זמני" "מקצוע האח/ות מעשי./- היתר זמני שייך לתחום הסיעוד ללא מומחיות או התמחות ומהווה רישוי זמני בלבד של אח/ות מעשי/ת"
* #109 ^property.code = #status
* #109 ^property.valueCode = #active
* #110 "כח עזר" "מקצוע הכח עזר ללא מומחיות או התמחות"
* #110 ^property.code = #status
* #110 ^property.valueCode = #active
* #115 "טכנאי ח. ניתוח" "מקצוע הטכנאי חדר ניתוח ללא מומחיות או התמחות"
* #115 ^property.code = #status
* #115 ^property.valueCode = #active
* #116 "מכשירן חדר ניתוח" "מקצוע המכשירן חדר ניתוח ללא מומחיות או התמחות"
* #116 ^property.code = #status
* #116 ^property.valueCode = #active
* #117 "מטפלת" "מקצוע המטפל שייך לתחום הסיעוד ללא מומחיות או התמחות"
* #117 ^property.code = #status
* #117 ^property.valueCode = #active
* #118 "טכנאי שיניים" "מקצוע הטכנאי שינייםשייך לתחום רפואת השיניים ללא מומחיות או התמחות"
* #118 ^property.code = #status
* #118 ^property.valueCode = #active
* #133 "מעשי מוגבל" "מקצוע מעשי מוגבל שייך לתחום הסיעוד ללא מומחיות או התמחות מהווה רישוי מוגבל של אח/ות מעשי/ת"
* #133 ^property.code = #status
* #133 ^property.valueCode = #active