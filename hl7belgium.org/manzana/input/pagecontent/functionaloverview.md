

The Manzana project is based on the FHIR R4 specification  and Belgian profiles.  
The diagram below shows the different data entities and elements that are relevant to this project, including the FHIR resources that contain the data.
<div>
{% include score.svg %}
</div>

### Questionnaire-derived scores
The **Manzana Questionnaire** defines the data that is asked from the patient;
Each patient's answer is stored in a single QuestionnaireResponse, and each QuestionnaireResponse can be used to calculate a score



### Calculated
As future work, we plan to extend the standard by the possiblity to automatically calculate the score from the information stored in an EHR, that is the Body Measurements, Oberservations and Meal Intakes (stored as Observation resources with specific scores), and Insulin adminstration (stored as MedicationAdminstration resources). To this end, we want to introduce a predefined Operation with corresponding OperationDefinition. 