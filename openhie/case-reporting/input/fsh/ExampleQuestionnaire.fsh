Alias: $targetStructureMap = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap
Alias: $translation = http://hl7.org/fhir/StructureDefinition/translation


RuleSet: Question(context, linkId, text, type, repeats)
* {context}item[+].linkId = "{linkId}"
* {context}item[=].text = "{text}"
* {context}item[=].type = #{type}
* {context}item[=].repeats = {repeats}


Instance: case-reporting-questionnaire
InstanceOf: Questionnaire
Description: "Questionnaire for Case Reporting, containing/enabling the features described in this ImplementationGuide"
Title: "Case Reporting Questionnaire"


* contained[+] = vs-patientgender
* contained[+] = hiv-risk-population
* contained[+] = hiv-risk-behavior


* name = "CaseReportingQuestionnaire"
* title = "Case Reporting Questionnaire"
* version = "2020"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft



/*
 To do: 
- Definition mapping 
- StructureMap mapping
*/

//* extension[0].valueCanonical = Canonical(HIVCaseReportMap)
//* extension[0].url = $targetStructureMap



* insert Question(,title, HIV Case Report, display, false)

* insert Question(,instructions, Please fill in this questionnaire monthly for each patient, display, false)

/*
* insert Question(,childHIVStatus, Child HIV Status, choice, false)
//* item[=].answerOption[+].valueCoding = #positive "Positive" 
//* item[=].answerOption[+].valueCoding = #negative "Negative" 
* item[=].answerOption[+].valueString = "Positive" 
* item[=].answerOption[+].valueString = "Negative" 
*/

* insert Question(,unit_name, Governing unit name, string, false)

* insert Question(,report-date, Date of Report, date, false)

* insert Question(,report-number, Report Number, string, false)


// This group belongs in a same "page" - see http://build.fhir.org/valueset-questionnaire-item-control.html
* insert Question(,patient-information, Patient Information, group, false)
* item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].text.extension[translation].extension[content].valueString = "Thông tin bệnh nhân"
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].extension.valueCodeableConcept =  #page
 

* insert Question(item[=].,unique_arv_number, Patient ARV identification number, string, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Số nhận dạng ARV của bệnh nhân"
* item[=].item[=].prefix = "1"

* insert Question(item[=].,personal_info, Patient Personal information, group, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Thông tin cá nhân của bệnh nhân"
* item[=].item[=].prefix = "2"

* insert Question(item[=].,name,Full name,string, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Họ và tên"
* item[=].item[=].prefix = "3"

* insert Question(item[=].,ethnicity,Ethnicity,choice, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Dân tộc"
* item[=].item[=].prefix = "4"
* item[=].item[=].answerValueSet = Canonical(vs-ethnicity)


// Contained Expanded VS
* insert Question(item[=].,gender, Gender, choice, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Giới tính"
* item[=].item[=].prefix = "5"
* item[=].item[=].answerValueSet = "#vs-patientgender"


* insert Question(item[=].,birth_year,Year of Birth, integer, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Năm sinh"
* item[=].item[=].prefix = "6"
// Define min and max value
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension.valueString = "1880"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension.valueString = "2021"
// Optional, add a year as a regex
//* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/regex"
//* item[=].extension.valueString = "([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00))"


* insert Question(item[=].,identification,Identification, group, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Nhận biết"
* item[=].item[=].prefix = "7"


* insert Question(item[=].item[=].,health_insurance_nr,Health insurance Number, string, false)
* item[=].item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].item[=].text.extension[translation].extension[content].valueString = "Số bảo hiểm y tế"
* item[=].item[=].item[=].prefix = "7.1"


* insert Question(item[=].item[=].,passport_nr,Passport Number, string, false)
* item[=].item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].item[=].text.extension[translation].extension[content].valueString = "Số hộ chiếu"
* item[=].item[=].item[=].prefix = "7.2"

* insert Question(item[=].,residence,Residence, string, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Nơi cư trú"
* item[=].item[=].prefix = "8"

* insert Question(item[=].item[=].,permanent_residence,Permanent Residence, string, false)
* item[=].item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].item[=].text.extension[translation].extension[content].valueString = "Hộ khẩu thường trú"
* item[=].item[=].item[=].prefix = "8.1"

// FEATURE: RegEx           /////////////////////////////////////////////////////////////////////////////////////////////////
* insert Question(item[=].item[=].,postalcode, Postal Code, string, false)
* item[=].item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].item[=].text.extension[translation].extension[content].valueString = "...."
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].item[=].item[=].extension.valueString = "[A-Z][0-9][A-Z] [0-9][A-Z][0-9]"
* item[=].item[=].item[=].prefix = "8.2"


* insert Question(item[=].item[=].,current_residence,Current Residence (if not same as permanent\), string, false)
* item[=].item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].item[=].text.extension[translation].extension[content].valueString = "Nơi ở hiện tại (nếu không giống với nơi ở thường trú)"
* item[=].item[=].item[=].prefix = "8.3"

* insert Question(item[=].,occupation,Occupation, choice, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Nghề nghiệp"
* item[=].item[=].prefix = "9"


* insert Question(,risk_factors,Risk Factors, group, false)
* item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].text.extension[translation].extension[content].valueString = "Các yếu tố rủi ro"
* item[=].prefix = "10"

// FEATURE: Contained, Not (yet) expanded VS   /////////////////////////////////////////////////////////////////////////////////////////////////
* insert Question(item[=].,risk_population,Risk Population, choice, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Dân số Nguy cơ"
* item[=].item[=].answerValueSet = Canonical(hiv-risk-population)
* item[=].item[=].prefix = "10.1"

// FEATURE: External, Not (yet) expanded VS   /////////////////////////////////////////////////////////////////////////////////////////////////
* insert Question(item[=].,risk_behavior,Risk Behavior, choice, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Hành vi rủi ro"
* item[=].item[=].answerValueSet = Canonical(hiv-risk-behavior)
* item[=].item[=].prefix = "10.2"

// FEATURE: External, expanded VS           /////////////////////////////////////////////////////////////////////////////////////////////////
* insert Question(item[=].,transmssion_route, Transmission Route, choice, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Đường truyền"
* item[=].item[=].answerValueSet = Canonical(hiv-transmission-route)
* item[=].item[=].prefix = "10.3"


* insert Question(,hiv-diagnosis,HIV Diagnosis, group, false)
* item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].text.extension[translation].extension[content].valueString = "Chẩn đoán HIV"
* item[=].prefix = "11"

* insert Question(item[=].,date-of-confirmation,Date of Confirmation, date, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Ngày xác nhận"
* item[=].item[=].prefix = "11.1"

* insert Question(item[=].,confirming-lab,Confirming Lab, string, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Phòng thí nghiệm xác nhận"
* item[=].item[=].prefix = "11.2"

* insert Question(item[=].,date-of-specimen-collection,Date of Specimen Collection, date, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Ngày lấy mẫu"
* item[=].item[=].prefix = "11.3"

* insert Question(item[=].,place-of-specimen-collection,Place of Specimen Collection, string, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Nơi lấy mẫu vật"
* item[=].item[=].prefix = "11.4"


* insert Question(,hiv-recency-test,HIV Recency Test, group, false)
* item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].text.extension[translation].extension[content].valueString = "Xét nghiệm HIV gần đây"
* item[=].prefix = "12"

* insert Question(item[=].,rapid-test,HIV Recency Rapid Test, group, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Xét nghiệm nhanh lần truy cập HIV"
* item[=].item[=].prefix = "12.1"

* insert Question(item[=].item[=].,date-of-specimen-collection,Date of Specimen Collection, date, false)
* item[=].item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].item[=].text.extension[translation].extension[content].valueString = "Ngày lấy mẫu"
* item[=].item[=].item[=].prefix = "12.1.1"

* insert Question(item[=].item[=].,place-of-specimen-collection,Place of Specimen Collection, string, false)
* item[=].item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].item[=].text.extension[translation].extension[content].valueString = "...."
* item[=].item[=].item[=].prefix = "12.1.2"

// FEATURE: Explicit AnswerOption values   /////////////////////////////////////////////////////////////////////////////////////////////////
* insert Question(item[=].item[=].,rapid-test-result,Recency Rapid Test Result, choice, false)
* item[=].item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].item[=].text.extension[translation].extension[content].valueString = "Kết quả kiểm tra nhanh lần truy cập gần đây"
* item[=].item[=].item[=].prefix = "12.1.3"
//* item[=].item[=].item[=].answerOption[+].valueCoding = #positive "Positive" 
//* item[=].item[=].item[=].answerOption[+].valueCoding = #negative "Negative" 
* item[=].item[=].item[=].answerOption[+].valueString = "Positive" 
* item[=].item[=].item[=].answerOption[+].valueString = "Negative" 


* insert Question(item[=].,vl-test,HIV Recency Rapid Test, group, false)
* item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].text.extension[translation].extension[content].valueString = "Xét nghiệm nhanh lần truy cập HIV"
* item[=].item[=].prefix = "12.2"

* insert Question(item[=].item[=].,date-of-test-performance,Date of VL Recency test performance, date, false)
* item[=].item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].item[=].text.extension[translation].extension[content].valueString = "Ngày thực hiện kiểm tra lần truy cập gần đây của VL"
* item[=].item[=].item[=].prefix = "12.2.1"

* insert Question(item[=].item[=].,vl-test-result,VL Recency Test Result, choice, false)
* item[=].item[=].item[=].text.extension[$translation].extension[lang].valueCode = #vi-VN
* item[=].item[=].item[=].text.extension[translation].extension[content].valueString = "Kết quả kiểm tra lần truy cập gần đây của VL"
* item[=].item[=].item[=].prefix = "12.2.2"


