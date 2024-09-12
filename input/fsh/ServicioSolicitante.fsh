
Profile : ServicioSolicitante
Parent : ServiceRequest
Description: "Este es un perfil donde se encontrarán los datos del servicio de salud que realiza la petición de muestra"

* identifier    1..1 
  * ^short = "Identificador del servicio solicitante"
  * ^definition = "Se define el identificador como aquel que lo distingue del resto de los servicios clínicos."
  * extension contains  http://hl7.org/fhir/StructureDefinition/identifier-validDate named identificador  0..1

* intent 1..1 
* intent MS
* intent ^short = "Estado, valores posibles: proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option"
* intent ^definition = "intención"
* intent = #original-order

* requisition 0..1
  * ^short = "id de la solicitud compuesta."
* status 1..1 
* status MS 
  * ^short = "Estado, valores posibles : 	draft | active | on-hold | revoked | completed | entered-in-error | unknown."
  * ^definition = "Estado del diágnostico solicitado del paciente."
* status = #active

* priority 0..1 
* priority MS
* priority ^short = "Estado, valores posibles: 	routine | urgent | asap | stat"
* priority ^definition = "intención"
* priority = #urgent
* code 0..1
  * ^short = "solicitud u orden que se debe llevar a cabo."
* orderDetail 0..1
  * ^short = "Información adicional."
* subject 1..1
* subject MS 
* subject only Reference(Paciente)


* occurrence[x] 0..1
* occurrence[x]  only dateTime

* authoredOn 0..1
  * ^definition = "Fecha y hora de firma de la solicitud."
* requester 0..1 
* performer 0..*


* locationReference 0..* 
  * ^short = "localización referencial."
* reasonReference 0..* 
* supportingInfo 0..*
* specimen 0..* 
* bodySite 0..* 
  * ^short = "localización de la  muestra en el cuerpo."
* note 0..* 
  * ^short = "sección de comentarios adicionales."
* patientInstruction 0..1
  * ^short = "sección de instrucciones al paciente."
* relevantHistory 0..* 

