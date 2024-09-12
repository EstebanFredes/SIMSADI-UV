Profile: BundleResultados
Parent: Bundle
Id: BundleResultados
Title: "Bundle Resultados"
Description: "Bundle par agrupar recursos para el envío de la respuesta del examen de biopsia"

* identifier 1.. MS
* type 1..1 
  * ^short = "Tipo de bundle" 
* type from http://hl7.org/fhir/ValueSet/bundle-type (required)
* type = #document

* timestamp 1.. MS

* entry 1.. MS
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resolve()"
  * ^slicing.rules = #open
  * ^slicing.description = "Entradas del bundle que refenciarán a las diferentes partes del documento de informe de biopsia."
  * ^slicing.ordered = false 

  * ^short = "entradas del documento"
  * ^definition = "Entradas para documento de solicitud de biopsia"

* entry contains
    entryDocumento  1.. MS and
    entryPaciente  1.. MS and
    entryPrestador 0.. MS and
    entryAntecedentesClinicos 0..1 MS and
    entryExamenMacroscopico 0..1 MS and
    entryDescripcionMicroscopica 0..1 MS and
    entryDiagnosticoInicial 0..1 MS and
    entryDiagnosticoFinal 0..1 MS

* entry[entryDocumento] 
  * ^short = "Documento inform de biopsia"
  * ^definition = "Documento composition "
  * fullUrl 0..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only DocumentoResultados


* entry[entryPaciente]
  * ^short = "Paciente al que corresponde el informe"
  * ^definition = "Paciente al que se le realizó la biopsia, sus resultados se encuentran en el informe de biopsia"
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Paciente que se realizó la biopsia"
  * resource only Paciente

* entry[entryPrestador]
  * ^short = "Prestador que realizó el informe de biopsia"
  * ^definition = "Prestador que realizó el informe de biopsia"
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Prestador informante"
  * resource only Profesional

* entry[entryAntecedentesClinicos]
  * ^short = "Antecedentes clínicos"
  * ^definition = "Antecedentes clinicos que presenta el paciente "
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Antecedentes Clínicos"
  * resource only AmbitoClinico

* entry[entryExamenMacroscopico]
  * ^short = "Examen macroscópico de la muestra"
  * ^definition = "Descripciones generales del examen macroscópico de la muestra"
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Examen macroscópico"
  * resource only Muestra

* entry[entryDescripcionMicroscopica]
  * ^short = "Descripción microscópica de la muestra"
  * ^definition = "Descripciones específicas de la muestra"
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Descripción microscópica"
  * resource only Muestra

* entry[entryDiagnosticoInicial]
  * ^short = "Diagnóstico inicial"
  * ^definition = "Diagnóstico del prestador antes de realizar el examen de biopsia"
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Diagnpostico inicial"
  * resource only Diagnostico

* entry[entryDiagnosticoFinal]
  * ^short = "Diagnóstico final"
  * ^definition = "Diagnóstico despúes de realizar el examen de biopsia"
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Diagnpostico final"
  * resource only Diagnostico