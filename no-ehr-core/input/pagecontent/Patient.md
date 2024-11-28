## Patient

API actions related to a [patient](StructureDefinition-NoEHRCorePatient.html)

Category of operations related to patients. A patient is an individual with a unique system ID and typically a national identifier such as F-number, D-number, or a combination of first name/last name and a date of birth. A patient is unique in the context of a medical record system.

### **Search**
Retrieve a list of patients based on search criteria. Returns 0 to many patients depending on the combination of search parameters. The list contains basic patient information including ID.

#### **GET**

##### Parameters

| Name | Type | Data Type | Description |   
|------|------|-----------|-------------|   
|      |      |           |             |   
{:.grid}

##### Responses

| HTTP Code | Content-Type           | Response                                                                               |   
|-----------|------------------------|----------------------------------------------------------------------------------------|   
| `200`     | `application/json`     | `{"content": [` [Bundle](https://hl7.org/fhir/bundle.html) `]}` |   
| `400`     | `application/json`     | `{"code":"400","message":"Bad Request"}`                                               |   
| `401`     | `application/json`     | `{"code":"401","message":"Unauthorized"}`                                              |
{:.grid}

---

#### **POST**

##### Parameters

| Name | Type | Data Type | Description |
|------|------|-----------|-------------|
|      |      |           |             |

##### Responses

| HTTP Code | Content-Type           | Response                                                                               |
|-----------|------------------------|----------------------------------------------------------------------------------------|
| `200`     | `application/json`     | `{"result": [` [Bundle](https://hl7.org/fhir/bundle.html) `]}` |
| `400`     | `application/json`     | `{"code":"400","message":"Bad Request"}`                                               |
| `401`     | `application/json`     | `{"code":"401","message":"Unauthorized"}`                                              |

---

### **Read**
Retrieve personal data and other information related to the patient identified by the ID provided in the request.

#### **GET**

##### Parameters

| Name | Type     | Data Type | Description |
|------|----------|-----------|-------------|
| id   | required | uuid      |             |

##### Responses

| HTTP Code | Content-Type           | Response                                                                               |
| ----------- | ------------------------ | ---------------------------------------------------------------------------------------- |
| `200`     | `application/json`     | `{"result": ` [Patient](StructureDefinition-NoEHRCorePatient.html) `}` |
| `400`     | `application/json`     | `{"code":"400","message":"Bad Request"}`                                               |
| `401`     | `application/json`     | `{"code":"401","message":"Unauthorized"}`                                              |

### **Create**
Create a new patient with values from the request. A new patient is assigned an ID that is unique to the medical record system. If a patient already exists (based on matching F-number, D-number, or a combination of birth date and first name/last name), no new patient is created.

#### **POST**

##### Parameters

| Name | Type | Data Type | Description |
| ------ | ------ | ----------- | ------------- |
|       |       |            |              |

##### Responses

| HTTP Code | Content-Type           | Response                                  |
|-----------|------------------------|-------------------------------------------|
| `201`     | `text/plain;charset=UTF-8` |                                           |
| `400`     | `application/json`     | `{"code":"400","message":"Bad Request"}`  |
| `401`     | `application/json`     | `{"code":"401","message":"Unauthorized"}` |

### **Update**
Update a patient with values from the request. The patient is identified by the ID.

#### **PUT**

##### Parameters

| Name | Type     | Data Type | Description |
|------|----------|-----------|-------------|
| id   | required | uuid      |             |

##### Responses

| HTTP Code | Content-Type           | Response                                                                               |
|-----------|------------------------|----------------------------------------------------------------------------------------|
| `200`     | `text/plain;charset=UTF-8` | `{` [Patient](StructureDefinition-NoEHRCorePatient.html) `}`  |
| `400`     | `application/json`     | `{"code":"400","message":"Bad Request"}`                                               |
| `401`     | `application/json`     | `{"code":"401","message":"Unauthorized"}`                                              |

---

#### **PATCH**

##### Parameters

| Name | Type     | Data Type | Description |
|------|----------|-----------|-------------|
| id   | required | uuid      |             |

##### Responses

| HTTP Code | Content-Type           | Response                                  |
|-----------|------------------------|-------------------------------------------|
| `204`     |                        | `NO CONTENT`                              |
| `400`     | `application/json`     | `{"code":"400","message":"Bad Request"}`  |
| `401`     | `application/json`     | `{"code":"401","message":"Unauthorized"}` |

---
