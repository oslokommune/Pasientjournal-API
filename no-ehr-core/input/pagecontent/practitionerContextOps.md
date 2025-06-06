### Practitioner Context

Endpoint designed to retrieve the current treatment context in an EHR for a practitioner. The term active treatment context is defined as a set of attributes that describes an active user (Practitioner) in an EHR, the active patient (open journal) and their common relation to a treatment situation. The exact definition, information model and associated business rules can be found in the documentation for the national framework for Trust ["Tillitsrammeverket"](https://github.com/NorskHelsenett/Tillitsrammeverk).

The following resouces shall be used in the implementation of this endpoint

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
        <td>_id </td>
        <td></td>
    </tr>
    <tr>
        <td><a href="StructureDefinition-municipal-location.html">municipal-location</a></td>
        <td>_id  </td>
        <td></td>
    </tr>
    <tr>
        <td><a href="StructureDefinition-municipal-patient.html">municipal-patient</a></td>
        <td>_id, birthdate, death-date, family, gender, given, identifier, name birthdate+name, 
        family+gender, birthdate+family, gender+name death-date+family   </td>
        <td></td>
    </tr>
    <tr>
        <td><a href="StructureDefinition-municipal-practitioner.html">municipal-practitioner</a></td>
        <td>_id, identifier </td>
        <td></td>
    </tr>
    <tr>
        <td><a href="StructureDefinition-municipal-organization.html">municipal-organization</a></td>
        <td>_id </td>
        <td></td>
    </tr>
</table>
{:/}

### Operations

GET ... TODO