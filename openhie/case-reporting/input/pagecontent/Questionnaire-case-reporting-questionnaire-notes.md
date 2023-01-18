#### Answer Options, ValueSets and constraints

This questionnaire has the following features:

* **Rapid VL Test Result** uses explicit AnswerOptions
* **Patient Gender** uses a pre-expanded ValueSet that is contained in the Questionnaire  
* **Risk Population** uses a ValueSet that is contained in the Questionnaire, but not pre-expanded
* **Ethnicity** points to a ValueSet that contains external codes (defined by OID)
* **Transmission Route** uses a pre-expanded ValueSet that is defined in the ImplementationGuide, but not contained in the Questionnaire

<br/>

#### Page control
* **patient-information** is meant to be rendered as a single "page"

#### Input constraints
* **birth_year** is an integer with a minimum value and a maximum value
* **postal_code** has a regular expression

<br/>
<br/>
