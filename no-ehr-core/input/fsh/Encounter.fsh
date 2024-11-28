Profile: NoEHRCoreEncounter
Parent: Encounter
Id: no-ehr-core-encounter
Title: "no-ehr-core-encounter"
Description: "An Encounter profile tailored for the NO Domain EHR Trust Framework."

* ^status = #draft
* subject only Reference(NoBasisPatient or Group)
* participant.individual only Reference(NoBasisPractitioner or NoBasisPractitionerRole or NoBasisRelatedPerson)
* location.location only Reference(NoBasisLocation)
* serviceProvider only Reference(NoBasisOrganization)