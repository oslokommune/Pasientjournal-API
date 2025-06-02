## Episode of Care Operations
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
        <td><a href="StructureDefinition-municipal-encounter.html">municipal-encounter</a></td>
        <td>_id, type </td>
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
    
