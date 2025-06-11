Profile: NoMunicipalService
Parent: EpisodeOfCare
Id: municipal-service
Title: "municipal-service"
Description: "A EpisodeOfCare profile to represent the NO Municipal standard API."

* ^status = #draft
* patient only Reference(NoBasisPatient)
* managingOrganization 1..1
* managingOrganization only Reference(NoMunicipalOrganization)
* type 1..1
* type.coding 1..1
* type.coding.code 1..1
* type.coding.code ^short = "Tjenestetype i helse- og omsorgstjenesten"
* type.coding.system 1..1
* type.coding.system = "https://finnkode.helsedirektoratet.no/adm/collections/9151" (exactly)



