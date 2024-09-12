
Extension: Documento1
Id: Documento1
Title: "Extension Documento"
Description: "Extension de códigos para documento."
Context: AmbitoClinico
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSDocumento1 (required)

Extension: Identificador
Id: Identificador
Title: "Extension de identificador"
Description: "Extension de códigos para identificador."
Context: Patient
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSIdentificador (required)

Extension: EstadoClinico
Id: EstadoClinico
Title: "Extension de estado clínico."
Description: "Extension de códigos para Estado Clínico."
Context: AmbitoClinico
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSEstadoClinico (required)

Extension: SospechaDiagnosticada
Id: SospechaDiagnosticada
Title: "Extension de Sospecha Diagnostcada"
Description: "Extension de códigos para sospecha Diagnosticada."
Context: AmbitoClinico
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSSospechaDiagnosticada (required)

Extension: Telefono1
Id: Telefono1
Title: "Extension de contacto"
Description: "Extension de códigos para contacto."
Context: Profesional
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSTelefono (required)

Extension: Sitio1
Id: Sitio1 
Title: "Extension del Sitio del Cuerpo."
Description: "Extension de códigos para sitio del cuerpo."
Context: Muestra
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSSitioCuerpo (required)

Extension: ServicioSolicitante1
Id: ServicioSolicitante1
Title: "Extension del Servicio Solicitante."
Description: "Extension de códigos para Servicio Solicitante."
Context: Muestra
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSServicioSolicitante (required)

Extension: Asignacion1
Id: Asignacion1
Title: "Extension de asignación"
Description: "Extension de códigos para asignación."
Context: Muestra
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSAsignacion (required)

Extension: CondicionClinica
Id: CondicionClinica
Title: "Extension de Condición Clínica."
Description: "Extension de códigos para Condición Clínica."
Context: Diagnostico
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSCondicionClinica (required)

Extension: CSSCondicionClinicaDiagnostico
Id: CSSCondicionClinicaDiagnostico
Title: "Extension de Condición Clínica."
Description: "Extension de códigos para Condición Clínica."
Context: Diagnostico
* value[x] only code
  * ^short = "Codigos de uno de nuestros VS"
* valueCode from VSSCondicionClinicaDiagnostico (required)