Under følger en overordnet beskrivelse av HTTP REST operasjoner som forventes å være tilgjengelige.

## Pasient 


Category of operations related to patients. En pasient er et individ med en unik system-id og typisk en nasjonal
identifikator som F-nr, D-nr eller kombinasjon av fornavn/etternavn og en fødselsdato. En pasient er unik i kontekst av
et journalsystem.


 
 Hent liste med pasienter i samsvar med søkekriterier, returnerer 0 til mange pasienter for kombinasjon av søkeparametere. Liste inneholder basisinformasjon om pasient inklusive id.<br/><br/>

 

##### Parameters
> | name | type | data type | description |
> |------|------|-----------|-------------|
> |      |      |           |             |

##### Responses


> | http code | content-type                | response                                                                               |
> |-----------|-----------------------------|----------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [Patient](https://simplifier.net/hl7norwayno-basis/nobasispatient) `]}` |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                               |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                              |




 

##### Parameters
> | name | type | data type | description |
> |------|------|-----------|-------------|
> |      |      |           |             |

##### Responses


> | http code | content-type                | response                                                                                  |
> |-----------|-----------------------------|-------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [Patient](https://simplifier.net/hl7norwayno-basis/nobasispatient) `]}`    |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                  |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                 |



<hr style="border: 2px solid gray;">



Returnerer personalia og annen data knyttet til pasient med id i samsvar med verdi fra forespørsel. <br/><br/>

 

##### Parameters
> | name  |  type     | data type    | description |
> |-------|-----------|--------------|-------------|
> | id    | required  | uuid         |             |

##### Responses


> | http code | content-type                  | response                                                                             |
> |-----------|-------------------------------|--------------------------------------------------------------------------------------|
> | `200`     | `application/json`            | `{"result": ` [Patient](https://simplifier.net/hl7norwayno-basis/nobasispatient) `}` |
> | `400`     | `application/json`            | `{"code":"400","message":"Bad Request"}`                                             |
> | `401`     | `application/json`            | `{"code":"401","message":"Unauthorized"}`                                            |



<hr style="border: 2px solid gray;">



Opprett ny pasient med verdier fra forespørsel. Ny pasient opprettes med id som er unik for journalsystemet. Hvis en pasient allerede finnes (match på f-fn, d-nr eller fødselsdato og fornavn/etternavn) opprettes ingen ny pasient.  <br/><br/>

 

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



<hr style="border: 2px solid gray;">



Oppdater pasient med verdier fra forespørsel, pasienten identifiseres med id.  <br/><br/>

 

##### Parameters
> | name | type       | data type | description |
> |------|------------|-----------|-------------|
> | id   | required   | uuid      |             |

##### Responses


> | http code | content-type                      | response                                                                    |
> |-----------|-----------------------------------|-----------------------------------------------------------------------------|
> | `200`     | `text/plain;charset=UTF-8`        | `{` [Patient](https://simplifier.net/hl7norwayno-basis/nobasispatient) `}`  |
> | `400`     | `application/json`                | `{"code":"400","message":"Bad Request"}`                                    |
> | `401`     | `application/json`                | `{"code":"401","message":"Unauthorized"}`                                   |




 

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





------------------------------------------------------------------------------

## Personell


Kategori av operasjoner relatert til personell og administrasjon av personell. Denne gruppen med funksjonalitet
inkluderer en egen operasjon for å hente ut aktiv kontekst for en innlogget bruker. I denne beskrivelsen er begrepene
bruker og personell å betrakte som likestilte.


 
Hent liste med personell i samsvar med søkekriterier, returnerer 0 til mange brukere for kombinasjon av søkeparametere. Liste inneholder basisinformasjon om bruker inklusive id.  <br/><br/>

 

##### Parameters
> | name | type | data type | description |
> |------|------|-----------|-------------|
> |      |      |           |             |

##### Responses


> | http code | content-type                | response                                                                                          |
> |-----------|-----------------------------|---------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [Practitioner](https://simplifier.net/hl7norwayno-basis/nobasispractitioner) `]}`  |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                          |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                         |




 

##### Parameters
> | name | type | data type | description |
> |------|------|-----------|-------------|
> |      |      |           |             |

##### Responses


> | http code | content-type                | response                                                                                            |
> |-----------|-----------------------------|-----------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [Practitioner](https://simplifier.net/hl7norwayno-basis/nobasispractitioner) `]}`    |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                            |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                           |



<hr style="border: 2px solid gray;">



Returnerer personalia og annen data knyttet til bruker med id i samsvar med verdi fra forespørsel.  <br/><br/>

 

##### Parameters
> | name | type     | data type | description |
> |------|----------|-----------|-------------|
> | id   | required | uuid      |             |

##### Responses


> | http code | content-type                  | response                                                                                         |
> |-----------|-------------------------------|--------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`            | `{"result": ` [Practitioner](https://simplifier.net/hl7norwayno-basis/nobasispractitioner) `}`   |
> | `400`     | `application/json`            | `{"code":"400","message":"Bad Request"}`                                                         |
> | `401`     | `application/json`            | `{"code":"401","message":"Unauthorized"}`                                                        |




 
Returnerer kontekstinformasjon fra pasientjournal for en aktiv brukersesjon. Bruker angis i forespørsel. Kontekst inneholder informasjon om innlogget bruker, aktiv pasient, kontakt/behandlingssituasjon/begrunnelse for aktivering av journal, seksjon/avdeling. 
Kontekst skal inneholde tilstrekkelig data for å konstruere en <a href="https://github.com/NorskHelsenett/Tillitsrammeverk/blob/main/specs/informasjons_og_datamodell.md">helsepersonellattest</a> i samsvar med regler fra 
Felles Tillitsmodell.  

##### Parameters
> | name    | type       | data type | description                   |
> |---------|------------|-----------|-------------------------------|
> | id      | required   | uuid      |                               |
> | context | required   | string    | hvis verdi returner kontekst  |

##### Responses


> | http code | content-type                  | response                                           |
> |-----------|-------------------------------|----------------------------------------------------|
> | `200`     | `application/json`            | `{"context": user, role, department, patient...`}` |
> | `400`     | `application/json`            | `{"code":"400","message":"Bad Request"}`           |
> | `401`     | `application/json`            | `{"code":"401","message":"Unauthorized"}`          |



<hr style="border: 2px solid gray;">



Opprett en bruker med verdier fra forespørsel. Ny bruker får opprettet en unik id i journalsystemet. Hvis en bruker allerede finnes (match på f-fn, d-nr eller fødselsdato og fornavn/etternavn) opprettes ingen bruker.  <br/><br/>

 

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



<hr style="border: 2px solid gray;">



Oppdater bruker med verdier fra forespørsel, brukeren identifiseres med id.  <br/><br/>

 

##### Parameters
> | name | type     | data type | description |
> |------|----------|-----------|-------------|
> | id   | required | uuid      |             |

##### Responses


> | http code | content-type                      | response                                                                               |
> |-----------|-----------------------------------|----------------------------------------------------------------------------------------|
> | `200`     | `text/plain;charset=UTF-8`        | `{` [Practitioner](https://simplifier.net/hl7norwayno-basis/nobasispractitioner) `}`   |
> | `400`     | `application/json`                | `{"code":"400","message":"Bad Request"}`                                               |
> | `401`     | `application/json`                | `{"code":"401","message":"Unauthorized"}`                                              |




 

##### Parameters
> | name | type       | data type | description |
> |------|------------|-----------|-------------|
> | id   | required   | uuid      |             |

##### Responses


> | http code | content-type       | response                                  |
> |-----------|--------------------|-------------------------------------------|
> | `204`     | ``                 | `NO CONTENT`                              |
> | `400`     | `application/json` | `{"code":"400","message":"Bad Request"}`  |
> | `401`     | `application/json` | `{"code":"401","message":"Unauthorized"}` |





------------------------------------------------------------------------------

## Hendelse


Kategori av operasjoner relatert til en hendelse. En hendelse har typisk en knytning til både helsepersonell og pasient.
Pasient og personell har en tilknytning til en lokasjon og en hendelse har typisk en klassifikasjon som for eksempel
“konsultasjon”. En hendelse er avgrenset i tid. I denne beskrivelsen er begrepene hendelse og kontakt å betrakte som
likestilte.


 
Hent liste med hendelser som er i samsvar med søkekriterier, returnerer 0 til mange hendelser for kombinasjon av
søkeparametere. Liste inneholder grunnleggende informasjon om hendelse slik som tidspunkt, type, lokasjon, pasient og
id.
<br/><br/>

 

##### Parameters
> | name | type | data type | description |
> |------|------|-----------|-------------|
> |      |      |           |             |

##### Responses


> | http code | content-type                | response                                                                                                                                          |
> |-----------|-----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [Encounter](https://hl7norway.github.io/AuditEvent/currentbuild/StructureDefinition-no-domain-Trustframework-Encounter.html) `]}`  |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                                                                          |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                                                                         |




 

##### Parameters
> | name | type | data type | description |
> |------|------|-----------|-------------|
> |      |      |           |             |

##### Responses


> | http code | content-type                | response                                                                                                                                          |
> |-----------|-----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [Encounter](https://hl7norway.github.io/AuditEvent/currentbuild/StructureDefinition-no-domain-Trustframework-Encounter.html) `]}`  |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                                                                          |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                                                                         |



<hr style="border: 2px solid gray;">



Returnerer data knyttet til en hendelse med id som er i samsvar med verdi fra forespørsel. <br/><br/>

 

##### Parameters
> | name |  type     | data type    | description |
> |------|-----------|--------------|-------------|
> | id   | required  | uuid         |             |

##### Responses


> | http code | content-type                  | response                                                                                                                                        |
> |-----------|-------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`            | `{"result": ` [Encounter](https://hl7norway.github.io/AuditEvent/currentbuild/StructureDefinition-no-domain-Trustframework-Encounter.html) `}`  |
> | `400`     | `application/json`            | `{"code":"400","message":"Bad Request"}`                                                                                                        |
> | `401`     | `application/json`            | `{"code":"401","message":"Unauthorized"}`                                                                                                       |



<hr style="border: 2px solid gray;">



Opprett en hendelse med verdier fra forespørsel.
 <br/><br/>

 

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



<hr style="border: 2px solid gray;">



Oppdater en hendelse med verdier fra forespørsel, hendelsen identifiseres med id.
<br/><br/>

 

##### Parameters
> | name | type       | data type | description |
> |------|------------|-----------|-------------|
> | id   | required   | uuid      |             |

##### Responses


> | http code | content-type                      | response                                                                                                                               |
> |-----------|-----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|
> | `200`     | `text/plain;charset=UTF-8`        | `{` [Encounter](https://hl7norway.github.io/AuditEvent/currentbuild/StructureDefinition-no-domain-Trustframework-Encounter.html) `}`   |
> | `400`     | `application/json`                | `{"code":"400","message":"Bad Request"}`                                                                                               |
> | `401`     | `application/json`                | `{"code":"401","message":"Unauthorized"}`                                                                                              |




 

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





------------------------------------------------------------------------------

## Avtale

Kategori av operasjoner relatert til en pasientavtale. En avtale har typisk en tilknytning både til en pasient og en
lokasjon. En avtale er avgrenset i tid og har typisk en status for om den er aktiv, fremtidig eller avsluttet.


 
Hent liste med avtaler som er i samsvar med søkekriterier, returnerer 0 til mange avtaler for kombinasjon av
søkeparametere. Liste inneholder grunnleggende informasjon om avtale slik som tidspunkt, lokasjon, status og id.

<br/><br/>

 

##### Parameters
> | name          | type     | data type | description |
> |---------------|----------|-----------|-------------|
> | patient_id    | optional | uuid      |             | 
> | department_id | optional | uuid      |             |
> | user_id       | optional | uuid      |             |
> | type          | optional | string    |             |
> | status        | optional | string    |             |

##### Responses


> | http code | content-type                | response                                                                                                     |
> |-----------|-----------------------------|--------------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [Appointment](https://simplifier.net/hl7norwayno-basis/nobasisappointment-duplicate-2) `]}`   |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                                     |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                                    |




 

##### Parameters
> | name          | type     | data type | description |
> |---------------|----------|-----------|-------------|
> | patient_id    | optional | uuid      |             | 
> | department_id | optional | uuid      |             |
> | user_id       | optional | uuid      |             |
> | type          | optional | string    |             |
> | status        | optional | string    |             |

##### Responses


> | http code | content-type                | response                                                                                                     |
> |-----------|-----------------------------|--------------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [Appointment](https://simplifier.net/hl7norwayno-basis/nobasisappointment-duplicate-2) `]}`   |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                                     |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                                    |



<hr style="border: 2px solid gray;">



Returnerer data knyttet til en avtale med id som er i samsvar med verdi fra forespørsel.
<br/><br/>

 

##### Parameters
> | name   |  type     | data type    | description |
> |--------|-----------|--------------|-------------|
> | id     | required  | uuid         |             |

##### Responses


> | http code | content-type                  | response                                                                                                 |
> |-----------|-------------------------------|----------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`            | `{"result": ` [Appointment](https://simplifier.net/hl7norwayno-basis/nobasisappointment-duplicate-2) `}` |
> | `400`     | `application/json`            | `{"code":"400","message":"Bad Request"}`                                                                 |
> | `401`     | `application/json`            | `{"code":"401","message":"Unauthorized"}`                                                                |



<hr style="border: 2px solid gray;">



Opprett en avtale med verdier fra forespørsel.
 <br/><br/>

 

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



<hr style="border: 2px solid gray;">



Oppdater en avtale med verdier fra forespørsel, avtalen identifiseres med id.
<br/><br/>

 

##### Parameters
> | name | type       | data type | description |
> |------|------------|-----------|-------------|
> | id   | required   | uuid      |             |

##### Responses


> | http code | content-type                      | response                                                                                        |
> |-----------|-----------------------------------|-------------------------------------------------------------------------------------------------|
> | `200`     | `text/plain;charset=UTF-8`        |  `{` [Appointment](https://simplifier.net/hl7norwayno-basis/nobasisappointment-duplicate-2) `}` |
> | `400`     | `application/json`                | `{"code":"400","message":"Bad Request"}`                                                        |
> | `401`     | `application/json`                | `{"code":"401","message":"Unauthorized"}`                                                       |




 

##### Parameters
> | name |  type     | data type   | description |
> |------|-----------|-------------|-------------|
> | id   | required  | uuid        |             |

##### Responses


> | http code | content-type       | response                                  |
> |-----------|--------------------|-------------------------------------------|
> | `204`     | ``                 | `NO CONTENT`                              |
> | `400`     | `application/json` | `{"code":"400","message":"Bad Request"}`  |
> | `401`     | `application/json` | `{"code":"401","message":"Unauthorized"}` |





------------------------------------------------------------------------------

## Notat


Kategori av operasjoner relatert til notater. Et notat har typisk en tilknytning både til en pasient, personell og
kontakt. Et notat kan bestå av en kombinasjon av tekst og mer strukturerte elementer som en eller flere observasjoner


 
Hent liste med notater som er i samsvar med søkekriterier, returnerer 0 til mange notater for kombinasjon av
søkeparametere. Liste inneholder grunnleggende informasjon slik som tittel, type, dato opprettet og id.
<br/><br/>

 

##### Parameters
> | name          | type     | data type | description |
> |---------------|----------|-----------|-------------|
> | patient_id    | optional | uuid      |             | 
> | department_id | optional | uuid      |             |
> | user_id       | optional | uuid      |             |

##### Responses


> | http code | content-type                | response                                                                                       |
> |-----------|-----------------------------|------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [Composition](https://simplifier.net/hl7norwayno-basis/nobasiscomposition) `]}` |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                       |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                      |




 

##### Parameters
> | name          | type     | data type | description |
> |---------------|----------|-----------|-------------|
> | patient_id    | optional | uuid      |             | 
> | department_id | optional | uuid      |             |
> | user_id       | optional | uuid      |             |

##### Responses


> | http code | content-type                | response                                                                                                     |
> |-----------|-----------------------------|--------------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [Composition](https://simplifier.net/hl7norwayno-basis/nobasiscomposition) `]}`   |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                                     |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                                    |



<hr style="border: 2px solid gray;">



Returnerer data knyttet til et notat med id som er i samsvar med verdi fra forespørsel.
<br/><br/>

 

##### Parameters
> | name |  type     | data type    | description |
> |------|-----------|--------------|-------------|
> | id   | required  | uuid         |             |

##### Responses


> | http code | content-type                  | response                                                                                     |
> |-----------|-------------------------------|----------------------------------------------------------------------------------------------|
> | `200`     | `application/json`            | `{"result": ` [Composition](https://simplifier.net/hl7norwayno-basis/nobasiscomposition) `}` |
> | `400`     | `application/json`            | `{"code":"400","message":"Bad Request"}`                                                     |
> | `401`     | `application/json`            | `{"code":"401","message":"Unauthorized"}`                                                    |



<hr style="border: 2px solid gray;">



Opprett et notat med verdier fra forespørsel.
 <br/><br/>

 

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



<hr style="border: 2px solid gray;">



Oppdater et notat med verdier fra forespørsel, notatet identifiseres med id.
<br/><br/>

 

##### Parameters
> | name | type       | data type | description |
> |------|------------|-----------|-------------|
> | id   | required   | uuid      |             |

##### Responses


> | http code | content-type                     | response                                                                             |
> |-----------|----------------------------------|--------------------------------------------------------------------------------------|
> | `200`     | `text/plain;charset=UTF-8`       | `{` [Composition](https://simplifier.net/hl7norwayno-basis/nobasiscomposition) `}`   |
> | `400`     | `application/json`               | `{"code":"400","message":"Bad Request"}`                                             |
> | `401`     | `application/json`               | `{"code":"401","message":"Unauthorized"}`                                            |




 

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





------------------------------------------------------------------------------

## Dokument


Kategori av operasjoner relatert til et dokument. Et dokument har typisk en tilknytning både til en pasient, personell
og en lokasjon. Et dokument er typisk av en bestemt type, for eksempel “Epikrise” og i et bestemt format, for eksempel
“XML”. Et dokument kan ha en status som indikerer om det kan deles med pasient eller helsepersonell.


 
Hent liste med dokumenter som er i samsvar med søkekriterier, returnerer 0 til mange dokumenter for kombinasjon av
søkeparametere. Liste inneholder grunnleggende informasjon om dokumentene slik som tittel, format, dato opprettet og id.
<br/><br/>

 

##### Parameters
> | name          | type     | data type | description |
> |---------------|----------|-----------|-------------|
> | patient_id    | optional | uuid      |             | 
> | department_id | optional | uuid      |             |
> | user_id       | optional | uuid      |             |
> | type          | optional | string    |             |

##### Responses


> | http code | content-type                | response                                                                                                     |
> |-----------|-----------------------------|--------------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [DocumentReference](https://simplifier.net/hl7norwayno-basis/nobasisdocumentreference) `]}`   |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                                     |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                                    |




 

##### Parameters
> | name          | type     | data type | description |
> |---------------|----------|-----------|-------------|
> | patient_id    | optional | uuid      |             | 
> | department_id | optional | uuid      |             |
> | user_id       | optional | uuid      |             |
> | type          | optional | string    |             |

##### Responses


> | http code | content-type                | response                                                                                                     |
> |-----------|-----------------------------|--------------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [DocumentReference](https://simplifier.net/hl7norwayno-basis/nobasisdocumentreference) `]}`   |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                                     |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                                    |



<hr style="border: 2px solid gray;">



Returnerer data knyttet til et dokument med id som er i samsvar med verdi fra forespørsel.
<br/><br/>

 

##### Parameters
> | name |  type     | data type    | description |
> |------|-----------|--------------|-------------|
> | id   | required  | uuid         |             |

##### Responses


> | http code | content-type                  | response                                                                                                                                        |
> |-----------|-------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`            | `{"result": ` [DocumentReference](https://simplifier.net/hl7norwayno-basis/nobasisdocumentreference) `}`  |
> | `400`     | `application/json`            | `{"code":"400","message":"Bad Request"}`                                                                                                        |
> | `401`     | `application/json`            | `{"code":"401","message":"Unauthorized"}`                                                                                                       |



<hr style="border: 2px solid gray;">



Opprett et dokument med verdier fra forespørsel.
 <br/><br/>

 

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



<hr style="border: 2px solid gray;">



Oppdater et dokument med verdier fra forespørsel, dokumentet identifiseres med id.
<br/><br/>

 

##### Parameters
> | name  | type       | data type | description |
> |-------|------------|-----------|-------------|
> | id    | required   | uuid      |             |

##### Responses


> | http code | content-type                      | response                                                                                         |
> |-----------|-----------------------------------|--------------------------------------------------------------------------------------------------|
> | `200`     | `text/plain;charset=UTF-8`        | `{` [DocumentReference](https://simplifier.net/hl7norwayno-basis/nobasisdocumentreference) `}`   |
> | `400`     | `application/json`                | `{"code":"400","message":"Bad Request"}`                                                         |
> | `401`     | `application/json`                | `{"code":"401","message":"Unauthorized"}`                                                        |




 

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





## Tjeneste


Kategori av operasjoner relatert til tjenester en pasient kan motta. En tjeneste har typisk en tilknytning både til en
pasient og en lokasjon. En tjeneste er typisk av en bestemt type, for eksempel “Helsetjenester i hjemmet” og har en gitt
varighet. I denne beskrivelsen er begrepene tjeneste og tiltak å betrakte som likestilte.


 
Hent liste med tjenester som er i samsvar med søkekriterier, returnerer 0 til mange tjenester for kombinasjon av
søkeparametere. Liste inneholder grunnleggende informasjon om tjeneste slik som type, pasient, dato opprettet, status og
id.
<br/><br/>

 

##### Parameters
> | name          | type     | data type | description |
> |---------------|----------|-----------|-------------|
> | patient_id    | optional | uuid      |             | 

##### Responses


> | http code | content-type               | response                                                                   |
> |-----------|----------------------------|----------------------------------------------------------------------------|
> | `200`     | `application/json`         | `{"result": [` [CarePlan](https://www.hl7.org/fhir/careplan.html) `]}`     |
> | `400`     | `application/json`         | `{"code":"400","message":"Bad Request"}`                                   |
> | `401`     | `application/json`         | `{"code":"401","message":"Unauthorized"}`                                  |




 

##### Parameters
> | name    | type     | data type | description |
> |---------|----------|-----------|-------------|
> | id      | optional | uuid      |             | 

##### Responses


> | http code | content-type                | response                                                                                                     |
> |-----------|-----------------------------|--------------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          | `{"result": [` [CarePlan](https://www.hl7.org/fhir/careplan.html) `]}`   |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                                     |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                                    |



<hr style="border: 2px solid gray;">



Returnerer data knyttet til en tjeneste med id som er i samsvar med verdi fra forespørsel.
<br/><br/>

 

##### Parameters
> | name |  type     | data type    | description |
> |------|-----------|--------------|-------------|
> | id   | required  | uuid         |             |

##### Responses


> | http code | content-type                  | response                                                                                                                                        |
> |-----------|-------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`            | `{"result": ` [CarePlan](https://www.hl7.org/fhir/careplan.html) `}`  |
> | `400`     | `application/json`            | `{"code":"400","message":"Bad Request"}`                                                                                                        |
> | `401`     | `application/json`            | `{"code":"401","message":"Unauthorized"}`                                                                                                       |



<hr style="border: 2px solid gray;">



Opprett en tjeneste med verdier fra forespørsel. Tjeneste kan potensiellt knyttes til en pasient.
 <br/><br/>

 

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



<hr style="border: 2px solid gray;">



Oppdater en tjeneste med verdier fra forespørsel, instans av tjeneste identifiseres med id.
<br/><br/>

 

##### Parameters
> | name | type       | data type | description |
> |------|------------|-----------|-------------|
> | id   | required   | uuid      |             |

##### Responses


> | http code | content-type                      | response                                                                                                                               |
> |-----------|-----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|
> | `200`     | `text/plain;charset=UTF-8`        | `{` [CarePlan](https://www.hl7.org/fhir/careplan.html) `}`   |
> | `400`     | `application/json`                | `{"code":"400","message":"Bad Request"}`                                                                                               |
> | `401`     | `application/json`                | `{"code":"401","message":"Unauthorized"}`                                                                                              |




 

##### Parameters
> | name |  type     | data type   | description |
> |------|-----------|-------------|-------------|
> | id   | required  | uuid        |             |

##### Responses


> | http code | content-type       | response                                  |
> |-----------|--------------------|-------------------------------------------|
> | `204`     | ``                 | `NO CONTENT`                              |
> | `400`     | `application/json` | `{"code":"400","message":"Bad Request"}`  |
> | `401`     | `application/json` | `{"code":"401","message":"Unauthorized"}` |





## Målinger


Kategori av operasjoner relatert til målinger og observasjoner. En måling har typisk en tydelig definert type med tilhørende verdisett og kodeverk. Målinger har en tilknytning til en
pasient og opptrer gjerne i relasjon til andre målinger, hendelser eller prosedyrer. Det utveksles i dag en rekke målinger via Velferdsteknologisk Knutepunkt som har en egen 
[FHIR profilering](https://simplifier.net/guide/VelferdsteknologiskknutepunktDHOR4/Observation?version=current). Nye nasjonale tjenester for tilgang til [målinger](https://utviklerportal.nhn.no/informasjonstjenester/pasientens-maaledata/) 
og [laboratoriesvar](https://www.nhn.no/tjenester/pasientens-provesvar) benytter seg av flere av de samme ressursene. I denne beskrivelsen er begrepene observasjon og måling å betrakte som likestilte.


 
Hent liste med observasjoner i samsvar med angitte søkekriterier, returnerer 0 til mange observasjoner for kombinasjon av
søkeparametere. Liste inneholder grunnleggende informasjon slik som type/kategori, pasient, dato opprettet, verdi og
id for en observasjon.
<br/><br/>

 

##### Parameters
> | name       | type     | data type | description |
> |------------|----------|-----------|-------------|
> | patient_id | optional | uuid      |             | 
> | type       | optional | string    |             | 

##### Responses


> | http code | content-type                | response                                                                                               |
> |-----------|-----------------------------|--------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          |  `{"result": [` [Observation](https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/83132) `]}` |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                               |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                              |




 

##### Parameters
> | name         | type     | data type | description |
> |--------------|----------|-----------|-------------|
> | patient_id   | optional | uuid      |             | 
> | type         | optional | string    |             | 
> 
##### Responses


> | http code | content-type                | response                                                                                               |
> |-----------|-----------------------------|--------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`          |  `{"result": [` [Observation](https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/83132) `]}` |
> | `400`     | `application/json`          | `{"code":"400","message":"Bad Request"}`                                                               |
> | `401`     | `application/json`          | `{"code":"401","message":"Unauthorized"}`                                                              |



<hr style="border: 2px solid gray;">



Returnerer data knyttet til en observasjon med id som er i samsvar med verdi fra forespørsel.
<br/><br/>

 

##### Parameters
> | name |  type     | data type    | description |
> |------|-----------|--------------|-------------|
> | id   | required  | uuid         |             |

##### Responses


> | http code | content-type                  | response                                                                                                                                        |
> |-----------|-------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
> | `200`     | `application/json`            | `{"result": ` [Observation](https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/83132) `}`  |
> | `400`     | `application/json`            | `{"code":"400","message":"Bad Request"}`                                                                                                        |
> | `401`     | `application/json`            | `{"code":"401","message":"Unauthorized"}`                                                                                                       |



<hr style="border: 2px solid gray;">



Opprett en observasjon med verdier fra forespørsel. 
 <br/><br/>

 

##### Parameters
> | name | type     | data type | description      |
> |------|----------|-----------|------------------|
> | type | required | string    | Type observasjon |

##### Responses


> | http code | content-type                      | response                                  |
> |-----------|-----------------------------------|-------------------------------------------|
> | `201`     | `text/plain;charset=UTF-8`        | ``                                        |
> | `400`     | `application/json`                | `{"code":"400","message":"Bad Request"}`  |
> | `401`     | `application/json`                | `{"code":"401","message":"Unauthorized"}` |



<hr style="border: 2px solid gray;">



Oppdater en observasjon med verdier fra forespørsel.
<br/><br/>

 

##### Parameters
> | name | type       | data type | description |
> |------|------------|-----------|-------------|
> | id   | required   | uuid      |             |

##### Responses


> | http code | content-type                      | response                                                                                  |
> |-----------|-----------------------------------|-------------------------------------------------------------------------------------------|
> | `200`     | `text/plain;charset=UTF-8`        | `{` [Observation](https://simplifier.net/packages/hl7.fhir.r4.core/4.0.1/files/83132) `}` |
> | `400`     | `application/json`                | `{"code":"400","message":"Bad Request"}`                                                  |
> | `401`     | `application/json`                | `{"code":"401","message":"Unauthorized"}`                                                 |




 

##### Parameters
> | name |  type     | data type   | description |
> |------|-----------|-------------|-------------|
> | id   | required  | uuid        |             |

##### Responses


> | http code | content-type       | response                                  |
> |-----------|--------------------|-------------------------------------------|
> | `204`     | ``                 | `NO CONTENT`                              |
> | `400`     | `application/json` | `{"code":"400","message":"Bad Request"}`  |
> | `401`     | `application/json` | `{"code":"401","message":"Unauthorized"}` |



