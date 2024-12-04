## Patient

API actions related to a [patient](StructureDefinition-no-ehr-core-patient.html')

Category of operations related to patients. A patient is an individual with a unique system ID and typically a national identifier such as F-number, D-number, or a combination of first name/last name and a date of birth. A patient is unique in the context of a medical record system.

## Must support 
{::nomarkdown}
<style>
    table, th, td {
        border: 1px solid silver;
        border-collapse: collapse;
    }
</style>
<table style="width:80%;">
    <tr>
        <th>Supported Profiles</th>
        <th style="width:50%">Search parameters</th>
        <th>Supported Includes</th>            
    </tr>
    <tr>
        <td><a href="StructureDefinition-no-ehr-core-patient.html">no-ehr-core-patient</a></td>
        <td>_id, birthdate, death-date, family, gender, given, identifier, name birthdate+name, 
        family+gender, birthdate+family, gender+name death-date+family   </td>
        <td></td>
    </tr>
</table>
{:/}

### Operations

#### Instance Level Interactions	

| Name | Description |   
|------|--------------|   
| [read](https://hl7.org/fhir/R4/http.html#read)	| Read the current state of the resource
| [update](https://hl7.org/fhir/R4/http.html#update) | Update an existing resource by its id (or create it if it is new)
| [patch](https://hl7.org/fhir/R4/http.html#patch) | Update an existing resource by posting a set of changes to it
| [delete](https://hl7.org/fhir/R4/http.html#delete) | Delete a resource
{:.grid}

#### Type Level Interactions	

| Name | Description |   
|------|--------------|   
| [create](https://hl7.org/fhir/R4/http.html#create) | Create a new resource with a server assigned id
| [search](https://hl7.org/fhir/R4/http.html#search) | Search the resource type based on some filter criteria
{:.grid}


## May support 

#### Instance Level Interactions	

| Name | Description |   
|------|--------------|   
| [vread](https://hl7.org/fhir/R4/http.html#vread)	| Read the state of a specific version of the resource
| [history](https://hl7.org/fhir/R4/http.html#history) | Retrieve the change history for a particular resource
{:.grid}

#### Type Level Interactions	

| Name | Description |   
|------|--------------|   
| [history](https://hl7.org/fhir/R4/http.html#history) | Retrieve the change history for a particular resource type
{:.grid}
