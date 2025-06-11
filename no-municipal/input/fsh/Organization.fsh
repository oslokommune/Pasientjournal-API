Profile: NoMunicipalOrganization
Parent: NoBasisOrganization
Id: municipal-organization
Title: "municipal-organization"
Description: "An Organization profile created for the NO Municipal standard API."

* ^status = #draft
* identifier[ENH] 1..1
* identifier[RSH] 0..0
* partOf  only Reference(NoMunicipalOrganization)
