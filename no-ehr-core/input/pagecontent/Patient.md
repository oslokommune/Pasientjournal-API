## Patient 

API actions related to a [patient](StructureDefinition-NoEHRCorePatient.html)

Kategori av operasjoner relatert til pasienter. En pasient er et individ med en unik system-id og typisk en nasjonal
identifikator som F-nr, D-nr eller kombinasjon av fornavn/etternavn og en fødselsdato. En pasient er unik i kontekst av
et journalsystem.

<details>
 <summary> <code><b>Search</b></code></summary>
 Hent liste med pasienter i samsvar med søkekriterier, returnerer 0 til mange pasienter for kombinasjon av søkeparametere. Liste inneholder basisinformasjon om pasient inklusive id.<br/><br/>
<details>
 <summary><code>GET</code></summary>

##### Parameters

> | name | type | data type | description |
> |------|------|-----------|-------------|
> |      |      |           |             |

##### Responses

> | http code | content-type                | response                                                                               |
> |-----------|-----------------------------|----------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [Patient](StructureDefinition-NoEHRCorePatient.html) `]}` |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                               |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                              |


</details>
<details>
 <summary><code>POST</code></summary>

##### Parameters

> | name | type | data type | description |
> |------|------|-----------|-------------|
> |      |      |           |             |

##### Responses

> | http code | content-type                | response                                                                                  |
> |-----------|-----------------------------|-------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [Patient](StructureDefinition-NoEHRCorePatient.html) `]}`    |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                  |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                 |


</details>
<hr style="border: 2px solid gray;">
</details>
<details>
<summary> <code><b>Read</b></code></summary>
Returnerer personalia og annen data knyttet til pasient med id i samsvar med verdi fra forespørsel. <br/><br/>
<details>
 <summary><code>GET</code> </summary>

##### Parameters

> | name  |  type     | data type    | description |
> |-------|-----------|--------------|-------------|
> | id    | required  | uuid         |             |

##### Responses

> | http code | content-type                  | response                                                                             |
> |-----------|-------------------------------|--------------------------------------------------------------------------------------|
> | `200`     | `application/json`            | `{"result": ` [Patient](StructureDefinition-NoEHRCorePatient.html) `}` |
> | `400`     | `application/json`            | `{"code":"400","message":"Bad Request"}`                                             |
> | `401`     | `application/json`            | `{"code":"401","message":"Unauthorized"}`                                            |


</details>
<hr style="border: 2px solid gray;">
</details>
<details>
<summary> <code><b>Create</b></code></summary>
Opprett ny pasient med verdier fra forespørsel. Ny pasient opprettes med id som er unik for journalsystemet. Hvis en pasient allerede finnes (match på f-fn, d-nr eller fødselsdato og fornavn/etternavn) opprettes ingen ny pasient.  <br/><br/>
<details>
 <summary><code>POST</code></summary>

##### Parameters

> | name | type | data type | description |
> |------|------|-----------|-------------|
> |      |      |           |             |

##### Responses

> | http code | content-type                      | response                                  |
> |-----------|-----------------------------------|-------------------------------------------|
> | `201`     | `text/plain;charset=UTF-8`        | ``                                        |
> | `400`     | `application/json`                | `{"code":"400","message":"Bad Request"}`  |
> | `401`     | `application/json`                | `{"code":"401","message":"Unauthorized"}` |


</details>
<hr style="border: 2px solid gray;">
</details>
<details>
<summary> <code><b>Update</b></code></summary>
Oppdater pasient med verdier fra forespørsel, pasienten identifiseres med id.  <br/><br/>
<details>
 <summary><code>PUT</code></summary>

##### Parameters

> | name | type       | data type | description |
> |------|------------|-----------|-------------|
> | id   | required   | uuid      |             |

##### Responses

> | http code | content-type                      | response                                                                    |
> |-----------|-----------------------------------|-----------------------------------------------------------------------------|
> | `200`     | `text/plain;charset=UTF-8`        | `{` [Patient](StructureDefinition-NoEHRCorePatient.html) `}`  |
> | `400`     | `application/json`                | `{"code":"400","message":"Bad Request"}`                                    |
> | `401`     | `application/json`                | `{"code":"401","message":"Unauthorized"}`                                   |


</details>
<details>
 <summary><code>PATCH</code></summary>

##### Parameters

> | name  |  type     | data type   | description |
> |-------|-----------|-------------|-------------|
> | id    | required  | uuid        |             |

##### Responses

> | http code | content-type       | response                                  |
> |-----------|--------------------|-------------------------------------------|
> | `204`     | ``                 | `NO CONTENT`                              |
> | `400`     | `application/json` | `{"code":"400","message":"Bad Request"}`  |
> | `401`     | `application/json` | `{"code":"401","message":"Unauthorized"}` |


</details>
</details>
