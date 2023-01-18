This FHIR implementation guide follows a standard presentation format and can be navigated by the links in the menu or in the [table of contents](toc.html).

### Content Structure

The content is organized into sections: 

[Introduction](index.html): The landing page contains essential references to the specification

[Business Requirements](requirements.html): A functional view on the requirements. This is the functional perspective and is the less technical part of this specification, consisting mostly of narrative pages. It includes the definition of key concepts, user personas, use cases and workflows, and functional models.

[Data Models and Exchange](data_exchange) Contains the data exchange protocols defined in this Implementation guide - the actual technical specification. Implementation guides can contain specifications for **behavior** or specifications for **content**, or both. 
* **Behaviour** specification focuses on the systems interactions - types and sequence of operations, abstract technical actors that combine into a functioning solution. This corresponds to business proceses, workflows and transactions. This is mostly narrative text, with some diagrams for interaction and process.
* **Content** specification defines the requirements for the data content that is exchanged. This defines data objects and consists of **Structure definitions**, **Code System and Value Set** definitions, **Operation Definitions**, and other technical artifacts. 

Each FHIR artifact is displayed in its page and contains the summary view, introduction notes and the content itself, which is rendered according to the FHIR resource type - different types of resources may have different renderings.

The remainder of the implementation guide contains useful narrative such as context, technical downloads, or navigation pages such as this one.


### Maturity and normative status
This specification has a status indicated in the front page. Each part of its content (pages, workflows, artifacts) is classified according to
* **Maturity**
* **Normative status** - content can be **normative** or **informative**:
  * **Normative content** defines expectations that must be met to be able to claim conformity with the specification. Examples are actor definitions and required transactions, or profiles with required elements and terminology constraints.
  * **Informative content** is used as guidance, and does not require to be used or adhered to. Examples of informative content are informative pages, references, etc.

