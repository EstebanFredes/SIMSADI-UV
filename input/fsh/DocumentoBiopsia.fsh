
Profile: DocumentoBiopsia
Parent: Composition
Id: DocumentoBiopsia
Title: "Documento de solicitud de biopsia"
Description: "Documento de entrada para solicitud de biopsia"

//* text MS
//* identifier MS

* identifier 1..1 MS
* identifier ^short = "Identificador local para recurso de documeto que puede ser distinto para cada versión del mismo"
* identifier ^definition = "Identificador para el recurso que contiene documento, puede ser usado de manera local. Este idetificador es independiente de la versión del documento"
* status MS
* status ^short = "Estado, valores posibles: preliminary | final | amended | entered-in-error"
* status ^definition = "Estado del documento"
* status = #final
* status from http://hl7.org/fhir/ValueSet/composition-status

//* ---- Paciente ----- 
* subject 0..1
* subject only Reference(Paciente)
* subject MS
* subject ^definition = "Paciente sobre el cual se ha generado este documento."
* subject ^short = "Paciente sobre el cual se ha generado este documento."
* subject.reference 0..1 MS
* subject.reference ^short = "Corresponde al paciente."

//* --- Titulo de documento -----
* title MS
* title ^short = "Título del documento."
* title ^definition = "Título del documento."
* title = "Documento de solicitud de Biopsia."

//* --- Fecha de obtención----
* date MS 
* date ^short = "Fecha en la cual se obtiene el documento."
* date ^definition = "Definición de la fecha en la cual se logra obtener el documento."


//*--- profesional---
* author 1..*
* author only Reference(PrestadorCL)
* author MS
* author ^definition = "Prestador encargado de  generar  este documento."
* author ^short = "Prestador  el cual genera el documento."
* author.reference 0..1 MS
* author.reference ^short = "Corresponde al prestador."

//*--servicio---
* event 0..1
* event MS
* event ^short = "servicio clínicos asociados."
* event ^definition = "servicio clínico asociado al documento."

//*--organización----
//** organization 0..*
//* organization MS
//* organization only Reference(OrganizacionCL)
//* organization ^short = "organización que solicita el documento."
//* organzation  ^definition = "organización solicitante del documento."



* section 0..*
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
  * title 1..1
  //* code.coding 1..*
    //* system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento"
    //* code from https://biomedica.uv.cl/fhir/ValueSet/VSSDocumento
    
* section.code 0..1 MS
* section.code from VSSDocumento1 (extensible)

* section contains

  AntecedentesClinicos 0..* and
  ProcedimientosQuirurgicos 0..* and
  Diagnostico 0..*
  

* section[AntecedentesClinicos] 
  * ^definition = "antecedentes clínicos del paciente."
  //* code.coding.code = #01
  * code = CSSDocumento1#01
  * entry only Reference(AmbitoClinico)

* section[ProcedimientosQuirurgicos]
  * ^definition = "En esta sección van todos las descripciones generales  del examen macroscópico de la muestra."
  //* code.coding.code = #03
  * code = CSSDocumento1#03
  * entry only Reference(Muestra)


* section[Diagnostico]
  * ^definition = "En esta sección va el resultado final del procedimiento."
  //* code.coding.code = #05
  * code = CSSDocumento1#05
  * entry only Reference(Diagnostico)
