<div dir="rtl" markdown="1">

# סקירה טכנית

<!-- Overview of data, actors and resource exchange.

For a detailed explanation of the process, see the descriptions [after the diagram](Appointment-scheduling---MRI Provider). -->
סקירה של נתונים, שחקנים וחילופי משאבים.

להסבר מפורט על התהליך, עיין בתיאורים [אחרי התרשים](#mri).

<div dir="ltr">{% include workflow-with-moh.svg %}</div>
<br clear="all"/>

# פרטים טכניים

## זימון תורים - ספק MRI
<!-- The patient will first go to the doctor (private or HMO), have a consultation and receive a referral. With a referral obtained, the next step would be to schedule an appointment with an MRI provider. Once the appointment has successfully concluded, the MRI provider shall send patient demographic and appointment details to the MoH using MRIPatient and MRIAppointment.

Two separate examples of patients are included, and three examples of an appointment being scheduled: the first appointment was cancelled, the second one was postponed, and the third one completed successfully. All three appointments are related, with the next appointment referencing the previous one. -->

המטופל יפנה תחילה לרופא (פרטי או קופת חולים), יערך ייעוץ ויקבל הפניה. עם קבלת הפניה, השלב הבא יהיה לקבוע פגישה עם ספק MRI. לאחר שהפגישה תסתיים בהצלחה, ספק ה-MRI ישלח את הפרטים הדמוגרפיים והתורים של המטופל למשרד הבריאות באמצעות [MRIPatient] ו-[MRIAppointment].

כלולות שתי דוגמאות נפרדות של מטופלים ושלוש דוגמאות לקביעת תור: התור הראשון בוטל, השני נדחה והשלישי הושלם בהצלחה. כל שלושת המינויים קשורים, כאשר הפגישה הבאה מתייחסת לקודמתה.

### דוגמה מינימלית למטופל

**בקש כתובת אתר**

POST [base]/Patient

**גוף הבקשה**

<!-- Example of a Patient resource with the minimal information necessary: -->
דוגמה למשאב מטופל עם המידע המינימלי הדרוש: [minimal-patient]

### דוגמה סבלנית מלאה יותר
**בקש כתובת אתר**

POST [base]/Patient

**גוף הבקשה**

<!-- Another example of a Patient resource with optional information included: -->
דוגמה נוספת למשאב מטופל עם מידע אופציונלי כללה: [patient-with-israeli-id]


### דוגמה לפגישה מבוטלת
**בקש כתובת אתר**

POST [base]/Appointment

**גוף הבקשה**

דוגמה למשאב מינימלי לפגישת MRI מבוטלת (1/3 מהסדרה): [cancelled-appointment]

המטופל ביקש תאריכי תור פנויים ב-2020-01-25 08:42, וקיבל אותם ב-2020-01-25 15:37, שהיו:

1. 2020-01-29 08:45 (נבחר על ידי המטופל)
2. 2020-01-29 10:00

בתאריך 2020-01-28 07:24:43, המטופל ביטל את הפגישה כי נאלץ להביא את ילדיו לבית הספר באופן בלתי צפוי.

### דוגמה לפגישה נדחה
**בקש כתובת אתר**

POST [base]/Appointment

**גוף הבקשה**

דוגמה למשאב מינימלי לפגישת MRI נדחה (2/3 מהסדרה): [postponed-appointment]

המטופל ביקש תאריכי תור פנויים ב-2020-02-05 10:00, וקיבל אותם ב-2020-02-05 12:39, שהם:

1. 2020-02-11 16:00 (נבחר על ידי המטופל)
2. 2020-02-13 09:30

ביום 2020-02-10 13:28, המטופל דחה את התור.

### דוגמה למינוי מוצלח
**בקש כתובת אתר**

POST [base]/Appointment

**גוף הבקשה**

דוגמה למשאב מינימלי של מינוי MRI (3/3 מהסדרה). שני המינויים הקודמים נדחו או בוטלו: [successful-appointment]
  
המטופל ביקש תאריכי תור פנויים ב-2020-02-10 13:28:17, וקיבל אותם ב-2020-02-10 20:12:42+02:00, שהיו:

1. 28-11-2022 13:15
2. 2022-11-28 16:00 (נבחר על ידי המטופל)
3. 29-11-2022 10:00

המינוי נמשך מ-28-11-2022 בין השעות 16:00-16:45.

## טופס 17 - קופת חולים

## דו"ח נוהל - קופת חולים

## דוח נוהל - ספק MRI
<!-- Once the procedure has been completed, the MRI provider needs to send the form 17 and procedure details to the MoH using MRIClaim, MRIClaimResponse, MRIProcedure, and MRIDiagnosticReport. -->
לאחר השלמת ההליך, ספק ה-MRI צריך לשלוח את טופס 17 ואת פרטי ההליך למשרד הבריאות באמצעות [MRIClaim], [MRIClaimResponse], [MRIProcedure] ו-[MRIDiagnosticReport].

### דוגמה לבקשה של טופס 17
**בקש כתובת אתר**

POST [base]/Claim

**גוף הבקשה**

דוגמה למשאב תביעה מינימלית התואם לצרכי מדידת MRI: [minimal-claim]

### דוגמה לתגובה מוצלחת בטופס 17
**בקש כתובת אתר**

POST [base]/ClaimResponse

**גוף הבקשה**

דוגמה למשאב תגובת תביעה מינימלית שהצליח: [minimal-claimresponse]

### טופס 17 דוגמה לתגובה נדחתה
**בקש כתובת אתר**

POST [base]/ClaimResponse

**גוף הבקשה**

דוגמה למשאב תגובת תביעה מינימלית שנדחה: [rejected-claimresponse]


### דוגמה לדוח נוהל
**בקש כתובת אתר**

POST [base]/Procedure

**גוף הבקשה**

דוגמה לדוח נוהל: [minimal-procedure]


### דוגמה לדוח אבחון
**בקש כתובת אתר**

POST [base]/DiagnosticReport

**גוף הבקשה**

דוגמה לדוח אבחון בעקבות הליך: [minimal-diagnosticreport]



</div>

{% include markdown-link-references.md %}
