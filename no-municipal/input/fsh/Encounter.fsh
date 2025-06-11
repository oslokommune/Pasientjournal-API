Profile: MunicipalEncounter
Parent: Encounter
Id: municipal-encounter
Title: "municipal-encounter"
Description: "An Encounter profile created for the NO Municipal standard API."

* ^status = #draft
* subject only Reference(NoBasisPatient or Group)
* participant.individual only Reference(NoBasisPractitioner or NoBasisPractitionerRole or NoBasisRelatedPerson)
* location.location only Reference(NoBasisLocation)
* serviceProvider only Reference(NoBasisOrganization)