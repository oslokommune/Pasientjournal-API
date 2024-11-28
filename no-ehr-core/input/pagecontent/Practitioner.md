## Practitioner

Category of operations related to personnel and personnel administration. This group of functionalities includes a specific operation for retrieving the active context for a logged-in user. In this description, the terms user and personnel are considered equivalent.

Retrieve a list of personnel based on search criteria. Returns 0 to many users for a combination of search parameters. The list contains basic information about the user, including ID.

##### Parameters

| name | type | data type | description |
|------|------|-----------|-------------|
|      |      |           |             |

##### Responses

| http code | content-type                | response                                                                                          |
|-----------|-----------------------------|---------------------------------------------------------------------------------------------------|
| `200`     | `application/json`          | `{"result": [` [Practitioner](https://simplifier.net/hl7norwayno-basis/nobasispractitioner) `]}`  |
| `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                          |
| `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                         |

##### Parameters

| name | type | data type | description |
|------|------|-----------|-------------|
|      |      |           |             |

##### Responses

| http code | content-type                | response                                                                                            |
|-----------|-----------------------------|-----------------------------------------------------------------------------------------------------|
| `200`     | `application/json`          | `{"result": [` [Practitioner](https://simplifier.net/hl7norwayno-basis/nobasispractitioner) `]}`    |
| `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                            |
| `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                           |

---

Return personal data and other information related to the user identified by the ID provided in the request.

##### Parameters

| name | type     | data type | description |
|------|----------|-----------|-------------|
| id   | required | uuid      |             |

##### Responses

| http code | content-type                  | response                                                                                         |
|-----------|-------------------------------|--------------------------------------------------------------------------------------------------|
| `200`     | `application/json`            | `{"result": ` [Practitioner](https://simplifier.net/hl7norwayno-basis/nobasispractitioner) `}`   |
| `400`     | `application/json`            | `{"code":"400","message":"Bad Request"}`                                                         |
| `401`     | `application/json`            | `{"code":"401","message":"Unauthorized"}`                                                        |

---

Return context information from the patient journal for an active user session. The user is specified in the request. The context includes information about the logged-in user, active patient, contact/treatment situation/reason for activating the journal, and section/department. The context must contain sufficient data to construct a [healthcare professional certificate](https://github.com/NorskHelsenett/Tillitsrammeverk/blob/main/specs/informasjons_og_datamodell.md) in accordance with the rules of the Joint Trust Framework.

##### Parameters

| name    | type       | data type | description                   |
|---------|------------|-----------|-------------------------------|
| id      | required   | uuid      |                               |
| context | required   | string    | if value return context       |

##### Responses

| http code | content-type                  | response                                           |
|-----------|-------------------------------|----------------------------------------------------|
| `200`     | `application/json`            | `{"context": user, role, department, patient...`}` |
| `400`     | `application/json`            | `{"code":"400","message":"Bad Request"}`           |
| `401`     | `application/json`            | `{"code":"401","message":"Unauthorized"}`          |

---

Create a user with values from the request. A new user is assigned a unique ID in the medical record system. If a user already exists (match on F-number, D-number, or date of birth and first name/last name), no user is created.

##### Parameters

| name | type | data type | description |
|------|------|-----------|-------------|
|      |      |           |             |

##### Responses

| http code | content-type                      | response                                  |
|-----------|-----------------------------------|-------------------------------------------|
| `201`     | `text/plain;charset=UTF-8`        |                                           |
| `400`     | `application/json`                | `{"code":"400","message":"Bad Request"}`  |
| `401`     | `application/json`                | `{"code":"401","message":"Unauthorized"}` |

---

Update a user with values from the request. The user is identified by the ID.

##### Parameters

| name | type     | data type | description |
|------|----------|-----------|-------------|
| id   | required | uuid      |             |

##### Responses

| http code | content-type                      | response                                                                               |
|-----------|-----------------------------------|----------------------------------------------------------------------------------------|
| `200`     | `text/plain;charset=UTF-8`        | `{` [Practitioner](https://simplifier.net/hl7norwayno-basis/nobasispractitioner) `}`   |
| `400`     | `application/json`                | `{"code":"400","message":"Bad Request"}`                                               |
| `401`     | `application/json`                | `{"code":"401","message":"Unauthorized"}`                                              |

##### Parameters

| name | type       | data type | description |
|------|------------|-----------|-------------|
| id   | required   | uuid      |             |

##### Responses

| http code | content-type       | response                                  |
|-----------|--------------------|-------------------------------------------|
| `204`     |                    | `NO CONTENT`                              |
| `400`     | `application/json` | `{"code":"400","message":"Bad Request"}`  |
| `401`     | `application/json` | `{"code":"401","message":"Unauthorized"}` |

--- 

Let me know if you need further edits!