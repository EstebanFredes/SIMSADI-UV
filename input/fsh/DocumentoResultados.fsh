
Profile: DocumentoResultados
Parent: Composition
Id: DocumentoResultados
Title: "Documento de informe de resultados de exámen de Biopsia."
Description: "Documento de salida de informe con resultados del procedimiento realizado."

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
* subject.reference 1..1 MS
* subject.reference ^short = "Corresponde al paciente."

//* --- Titulo de documento -----

* title   1..1
* title ^short = "Título del documento."
* title ^definition = "Título del documento."
* title = "Documento de solicitud de Biopsia."

//* --- Fecha de obtención----
* date 1..1
* date ^short = "Fecha en la cual se obtiene el documento."
* date ^definition = "Definición de la fecha en la cual se logra obtener el documento."


//*--- profesional---
* author 1..*
* author only Reference(PrestadorCL)
* author MS
* author ^definition = "Prestador encargado de  generar  este documento."
* author ^short = "Prestador  el cual genera el documento."
* author.reference 1..1 MS
* author.reference ^short = "Corresponde al prestador."

//*--servicio---
* event 1..*
* event MS
* event ^short = "servicio clínicos asociados."
* event ^definition = "servicio clínico asociado al documento."

* type 1..1
* type.text = "extracto de"

//*--organización----
//** organization 0..*
//* organization MS
//* organization only Reference(OrganizacionCL)
//* organization ^short = "organización que solicita el documento."
//* organzation  ^definition = "organización solicitante del documento."



* section 0..
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
  * title 1..1
  //* code.coding 1..1
    //* system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento"
    //* code from https://biomedica.uv.cl/fhir/ValueSet/VSSDocumento
    
* section.code 1.. MS
* section.code from VSSDocumento1 (extensible)
* section contains 

         AntecedentesClinicos 0..1 and
         ExamenMacroscopico 0.. and
         DescripcionMicroscopica 0.. and
         DiagnosticoInicial 0.. and
         DiagnosticoFinal 0..1
  


* section[AntecedentesClinicos]
  * ^definition = "En esta sección van todos los antecedentes clínicos del paciente."
  //* code.coding.code = CSSDocumento1#01 // * entry only Reference(Composition)
  * code = CSSDocumento1#01
  //  * entry only Reference(Composition) or Reference(https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento)
  * entry only Reference(AmbitoClinico)
  

* section[ExamenMacroscopico]
  
  * ^definition = "En esta sección van todos las descripciones generales  del examen macroscópico de la muestra."
  //* code.coding.code = CSSDocumento1#02
  * code = CSSDocumento1#02
  * entry only Reference(AmbitoClinico)


* section[DescripcionMicroscopica]
  * ^definition = "En esta sección van todos las descripciones específicas de la muestra."
  //* code.coding.code = CSSDocumento1#04
  * code = CSSDocumento1#04
  //* entry only Reference(Specimen) or Reference(https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento)
  * entry only Reference(Muestra)


* section[DiagnosticoInicial]
  * ^definition = "En esta sección va el resultado inicial  del procedimiento."
  //* code.coding.code = CSSDocumento1#06
  * code =  CSSDocumento1#06
  //* entry only Reference(DiagnosticReport) or Reference(https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento)
  * entry only Reference(Diagnostico)

* section[DiagnosticoFinal]
  * ^definition = "En esta sección va el resultado final del procedimiento."
  //* code.coding.code = CSSDocumento1#07
  * code = CSSDocumento1#07
  //* entry only Reference(DiagnosticReport) or Reference(https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento)
  * entry only Reference(Diagnostico)
