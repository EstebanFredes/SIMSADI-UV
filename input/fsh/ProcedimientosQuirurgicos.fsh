
Profile : ProcedimientosQuirurgicos 
Parent :   Procedure
Description: "Este es un perfil donde se encontrarán los procedimientos quierúrgicos."

* identifier    1..1 
  * ^short = "Identificador de la persona"
  * ^definition = "Se define el identificador como aquel que lo distingue del resto de los integrantes de la sociedad y el identificador de pila"
  * extension contains  http://hl7.org/fhir/StructureDefinition/identifier-validDate named identificador  0..1

* status. 1..1 
* status MS 
  * ^short = "Estado, valores posibles : 	preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown"
  * ^definition = "Estado del diágnostico solicitado del paciente."
* status = #preparation
* status from http://hl7.org/fhir/ValueSet/event-status




* subject 1..1
* subject MS 
* subject only Reference(Paciente)


* performed[x] 0..1
* performed[x] only dateTime 

* report  0..1
* report only Reference(DiagnosticReport)
* note 0..1 
  * ^short = "anotaciones"
  * ^definition = "en esta sección se añade información adicional."









