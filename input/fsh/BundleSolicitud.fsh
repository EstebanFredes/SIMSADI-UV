Profile: BundleSolicitud
Parent: Bundle
Id: BundleSolicitud
Title: "Bundle Solicitud"
Description: "Bundle para agrupar recursos para el envío de la solicitud de biopsia"

* identifier 1.. MS
* type 1..1
  * ^short = "Tipo de Bundle" 
* type from http://hl7.org/fhir/ValueSet/bundle-type (required)
* type = #document

* timestamp 1.. MS

* entry 1.. MS
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resolve()"
  * ^slicing.rules = #open
  * ^slicing.description = "Entradas del bundle que refenciarán a las doferentes partes del documento de soicitud de biopsia."
  * ^slicing.ordered = false 

  * ^short = "entradas del documento"
  * ^definition = "Entradas para documento de solicitud de biopsia"

//  * code 1..1 
//  * code from VSSEntradasSolicitud (extensible)

* entry contains 
    entryDocumento  1..1 MS and
    entryPaciente  1..1 MS and
    entryPrestador 0..1 MS and
    entryAntecedentesClinicos 0..* MS and
    entryProcedimientosQuirurgicos 0..* MS and 
    entryDiagnostico 0..*

* entry[entryDocumento] 
  * ^short = "Documento solicitud de biopsia"
  * ^definition = "Documento composition "
  * fullUrl 0..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only DocumentoBiopsia


* entry[entryPaciente]
  * ^short = "Paciente al que corresponde la solicitud"
  * ^definition = "Paciente al que se le debe realizar la biopsia, solicitada mediante el documento "
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Paciente que se realizará la biopsia"
  * resource only Paciente

* entry[entryPrestador]
  * ^short = "Prestador que solicita la biopsia"
  * ^definition = "Prestador que solocita la biopsia"
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Prestador solicitante"
  * resource only Profesional

* entry[entryAntecedentesClinicos]
  * ^short = "Antecedentes clínicos"
  * ^definition = "Antecedentes clinicos que presenta el paciente "
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Antecedentes Clínicos"
  * resource only AmbitoClinico

* entry[entryProcedimientosQuirurgicos]
  * ^short = "Procedimiento quirúrgico a realizar"
  * ^definition = "En esta sección van todos las descripciones generales  del examen macroscópico de la muestra."
  * fullUrl 0..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Procedimientos quirúrgicos"
  * resource only Muestra

* entry[entryDiagnostico]
  * ^short = "Diagnóstico inicial"
  * ^definition = "Diagnóstico del prestador antes de realizar el examen de biopsia"
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Diagnpostico inicial"
  * resource only Diagnostico


