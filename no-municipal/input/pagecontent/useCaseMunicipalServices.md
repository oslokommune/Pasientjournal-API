## Use case: Municipal Services

Municipal services are a part of the municipal healthcare system and various services are assigned to citizens according to their needs. The services are provided by the municipality.

The municipalities report on the services they provide to the citizens. The reporting is done by the municipality and is typically based on the data contained in a local EHR system. 
Services are classified by a service code as described by the Norwegian Directorate of Health and is documented in the National [code repository]("https://finnkode.helsedirektoratet.no/adm/collections/9151")

### List of service codes:

| Code | Service Name                                                        |
|------|---------------------------------------------------------------------|
| 1    | Praktisk bistand - daglige gjøremål                                 |
| 2    | Praktisk bistand - opplæring - daglige gjøremål                     |
| 3    | Praktisk bistand - brukerstyrt - personlig assistanse               |
| 4    | Dagaktivitetstilbud                                                 |
| 5    | Matombringing                                                       |
| 6    | Trygghetsalarm                                                      |
| 7    | Avlastning utenfor institusjon                                      |
| 8    | Avlastning i institusjon                                            |
| 9    | Støttekontakt                                                       |
| 11   | Omsorgsstønad                                                       |
| 14   | Bruk av tvang psykisk utviklingshemning – planlagte tiltak          |
| 15   | Helsetjenester i hjemmet                                            |
| 17   | Dagopphold i institusjon                                            |
| 18   | Tidsbegrenset opphold - utredning/behandling                        |
| 19   | Tidsbegrenset opphold - habilitering/rehabilitering                 |
| 20   | Tidsbegrenset opphold - annet                                       |
| 21   | Langtidsopphold i institusjon                                       |
| 22   | Nattopphold i institusjon                                           |
| 23   | Bruk av tvang psykisk utviklingshemning – nødsituasjoner            |
| 24   | Helsehjelp med tvang                                                |
| 25   | Kommunal øyeblikkelig hjelp - døgnopphold                           |
| 26   | Lokaliseringsteknologi (GPS)                                        |
| 27   | Elektronisk medisineringsstøtte                                     |
| 28   | Digitalt tilsyn                                                     |
| 29   | Bolig som kommunen disponerer for helse- og omsorgsformål           |

Information about the services assigned to a citizen can be useful in a number of clinical settings. For example, it can be 
important to know what services a citizen has access to when they are discharged from a hospital in order to ensure an appropriate transition 
to home care or other services.

NHN has created a national service for storing municipal services assigned to citizens. Local EHR systems report the services assigned to citizens to this service.

### Looking up the services assigned to a citizen
Sequence describes lookup from clinical context, e.g. when a citizen is admitted to or discharged from a hospital.
{% include services-central.svg %}



### Looking up all services of type
Sequence describes lookup of all services of one particular type to analyze distribution of services in a municipality.
{% include services.svg %}