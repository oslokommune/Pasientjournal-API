### Introduction
This implementation guide is intended to support and guide the use of HL7 FHIR in EHR systems in use in Norwegian primary healcare services. Information models are based on the [Norwegian basis models]({{site.data.fhir.nobasis}})   
This guide defines the minimum constraints on the FHIR resources and interaction support. The elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined. It also documents the minimum FHIR RESTful interactions to access patient data. Systems shall support both the NO EHR Core Profile content structure and the RESTful interactions defined for a resource.


### Background
As healthcare becomes increasingly digitized, the need for a standardized approach to health data exchange in Norway is more urgent than ever. Currently, interoperability between electronic health record (EHR) systems across regions and sectors is inadequate, limiting the efficiency and quality of care. Municipalities are demanding ownership and control over health data, highlighting the need for robust and flexible systems that can integrate seamlessly with other healthcare services.

A national HL7 FHIR (Fast Healthcare Interoperability Resources) specification offers a solution. By introducing a standard API for EHR systems, built on modern technology and national requirements, healthcare providers can ensure secure, scalable, and efficient data sharing. This would eliminate reliance on siloed graphical user interfaces or static file exchanges, paving the way for real-time integration and collaboration.

Standardized APIs would not only enhance data accessibility but also empower municipalities to tailor healthcare services to local needs. By fostering interoperability, Norway can build adaptable and resilient healthcare systems, ensuring high-quality care delivery across the country.

### How to read this guide

Readers are advised to understand [FHIR Terminology](https://hl7.org/fhir/R4/terminologies.html) requirements, FHIR RESTful API based on the HTTP protocol, FHIR Data Types, FHIR Search, and FHIR Resource formats.
