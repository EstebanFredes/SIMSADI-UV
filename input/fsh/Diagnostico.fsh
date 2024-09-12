
Profile : Diagnostico
Parent : DiagnosticReport
Description: "Este es un perfil para realizar diagnóstico según examen de biopsias realizados."

* identifier    1..1
  * ^short = "Identificador de la persona"
  * ^definition = "Se define el identificador como aquel que lo distingue del resto de los integrantes de la sociedad y el identificador de pila"
  * extension contains  http://hl7.org/fhir/StructureDefinition/identifier-validDate named identificador  0..1


  
* status 1..1
* status ^short = "Estado, valores posibles: preliminary | final | amended | entered-in-error"
* status ^definition = "Estado del documento"
* status = #final


* subject 1..1
* subject MS 
* subject only Reference(Paciente)




* effective[x] 1..1
* effective[x] only dateTime
 
* issued 0..1
  * ^short = "fecha y hora en que fue emitido este documento."
  * ^definition = "fecha y hora en que fue emitido el documento solicitante."


* performer 0..1
* resultsInterpreter 0..1
* specimen 0..1
* result 0..1
* media 0..1
  * comment 0..1
  * ^short = "Comentarios adicionales sobre la imagen mostrada."
* code 1..1

* conclusion 0..1
  * ^short = "Interpretación de los resultados."
* presentedForm 1..1
  *  ^short = "Informe completo de los resultados obtenidos."





