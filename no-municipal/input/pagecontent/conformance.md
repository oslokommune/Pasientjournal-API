The Profile elements consist of Mandatory, Must Support, and Additional elements. The sections below define the server and client expectations for processing these elements and illustrate how they are displayed and documented.

Mandatory Elements
Mandatory elements have a minimum cardinality of 1 (min=1). When an element is Mandatory, the data is expected always to be present. However, very rarely it may be missing, and the Missing Data section and the next section provide guidance when the data is missing. The convention in this guide is to mark all min=1 elements as Must Support unless they are nested under an optional element. An example of this is CarePlan.status.

Must Support Elements
For querying and reading NO EHR Core Profiles, Must Support on any profile data element SHALL be interpreted as follows 

Responders SHALL be capable of populating all data elements as part of the query results specified by the NO EHR Core Server Capability Statement.
Requestors SHALL be capable of processing resource instances containing the data elements without generating an error or causing the application to fail. In other words, Requestors SHOULD be capable of displaying the data elements for human use or storing it for other purposes.
When information on a particular data element is not present, and the reason for absence is unknown, Responders SHALL NOT include the data elements in the resource instance returned as part of the query results.
When querying Responders, Requestors SHALL interpret missing data elements within resource instances as data not present in the Responder’s system.

Responders SHOULD send the reason for the missing information. This is done by following the same methodology outlined in the Missing Data section but using the appropriate reason code instead of unknown.
Requestors SHALL be able to process resource instances containing data elements asserting missing information.

The terms Responder Actor and Requestor Actor are used throughout the guide and typically refer to a server or a client.
