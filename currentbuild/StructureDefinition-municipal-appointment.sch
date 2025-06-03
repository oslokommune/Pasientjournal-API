<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile NoBasisAppointment
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Appointment</sch:title>
    <sch:rule context="f:Appointment">
      <sch:assert test="count(f:extension[@url = 'http://hl7.no/fhir/StructureDefinition/no-basis-group']) &lt;= 1">extension with URL = 'http://hl7.no/fhir/StructureDefinition/no-basis-group': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.no/fhir/StructureDefinition/no-basis-partof']) &lt;= 1">extension with URL = 'http://hl7.no/fhir/StructureDefinition/no-basis-partof': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
