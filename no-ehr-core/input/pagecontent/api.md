### API

Description of general API operations related to each of the resources that this specification recomends support for. The API and the operations described will for the most part be a subset of standard operations described in the official [guidelines for RESTful API](https://hl7.org/fhir/http.html) create by HL7.

A server that supports the Norwegian EHR Core standard <b>SHALL:</b>   

- Implement the RESTful behavior according to the FHIR specification
- Follow the requirements documented in the General Requirements and Must Support pages
- Return the following response classes:
    - (Status 400): invalid parameter
    - (Status 401/4xx): unauthorized request
    - (Status 403): insufficient scopes
    - (Status 404): unknown resource

It is recommended that EHR vendors that implement the operations described in this implementation guide support the [SMART](https://hl7.org/fhir/smart-app-launch/) App Launch Standard for interactions with external clients.


### Endpoints   

[Practitioner Context](practitionerContextOps.html)   
[Appointment Operations](appointmentOps.html)   
[CarePlan Operations](carePlanOps.html)   
[Composition Operations](compositionOps.html)   
[DocumentReference Operations](documentReferenceOps.html)   
[Encounter Operations](encounterOps.html)   
[Location Operations](locationOps.html)   
[Observation Operations](OpservationOps.html)      
[Patient Operations](patientOps.html)    
[Practitioner Operations](practitionerOps.html)   
