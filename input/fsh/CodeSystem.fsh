
CodeSystem: CSSDocumento1
Id: CSSDocumento1
Title: "Códigos de sección del documento"
Description: "Este es un codeSystem en base a las secciones definidas en el documento."
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true


* #01 "AntecedentesClinicos"
* #02 "Examen Macroscopico"
* #03 "ProcedimientosQuirurgicos"
* #04 "DescripcionMicroscopica"
* #05 "Diagnostico"
* #06  "DiagnosticoInicial"
* #07 "DiagnosticoFinal"


CodeSystem: CSSIdentificador
Id: CSSIdentificador
Title: "Identificador"
Description: "Este es un codeSystem en base a los posibles opciones de identificadores."
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true

* #01 "RUN"
* #02 "Pasaporte"


CodeSystem: CSSEstadoClinico
Id: CSSEstadoClinico
Title: "Estado de la condición clínica."
Description: "Este es un codeSystem en base a los posibles opciones de  estado de la  condición clínica del paciente."
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true

* #Sospecha "Sospecha"
* #confirmed "Confirmed"
* #noconfirmed  "No confirmed"
* #faltainformacion  "Falta información"

CodeSystem: CSSCondicionClinica
Id: CSSCondicionClinica
Title: "condición clínica."
Description: "Este es un codeSystem en base a los posibles opciones de   condición clínica del paciente."
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true

* #01 "active"
* #02 "inactive"


CodeSystem: CSSCondicionClinicaDiagnostico
Id: CSSCondicionClinicaDiagnostico
Title: "Estado de la patología"
Description: "Este es un codeSystem en base a los posibles opciones de estado de la patología."
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true

* #active "active"
* #inactive "inactive"


CodeSystem: CSSSospechaDiagnosticada
Id: CSSSospechaDiagnosticada
Title: "Estado dde identificador de la sospecha diagnosticada."
Description: "Este es un codeSystem en base a los posibles identificadores de la sospecha diagnosticada."
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true

* #Sospecha "Sospecha"
* #confirmed "Confirmed"
* #noconfirmed  "No confirmed"
* #faltainformacion  "Falta información"
 



CodeSystem: CSSTelefono
Id: CSSTelefono
Title: "Contacto del paciente"
Description: "Contacto con el paciente."
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true

* #phone "phone"
* #cellphon "cellphon"

CodeSystem: CSSServicioSolicitante
Id: CSSServicioSolicitante
Title: "servicio clínico solicitante."
Description: "Identificador del servicio clínico que solicita el exámen."
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true

* #01 "anatomia Patológica"
* #02 "urgencia"
* #03 "pabellón"
* #04 "ginecolgía"
* #05 "neonatología"
* #06 "Hospitalización"
* #07 "UCI"
* #08 "UTI adulto"
* #09 "pediatría"
* #10 "psicolgía"

CodeSystem: CSSSitioCuerpo
Id: CSSSitioCuerpo
Title: "Sitio del cuerpo en el cual se encuentra la muestraa a examinar."
Description: "Descripción especifica del sitio del cuerpo en el cual se encuentra la muestra."
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true

* #01 "riñon derecho"
* #02 "riñon izquierdo"
* #03 "Pulmón derecho"
* #04 "Pulmón izquierdo"
* #05 "estómago"
* #06 "tiroides"

CodeSystem: CSSAsignacion
Id: CSSAsignacion
Title: "Asignación de identificador de laboratorio según tipo de muestra."
Description: "Identificador de laboratorio según tipo de muestra."
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true

* #01 "sangre"
* #02 "orina"
* #03 "saliva"
* #04 "tejido"
* #05 "células"
* #06 "ADN"
* #07 "ARN"


/*
CodeSystem: CSSEntradasSolicitud
Id: CSSEntradasSolicitud
Title: "Codigos entradas documento solicitud de biopsia"
Description: "Grupo de codigos para determinar la entradas en el documento de solicitud de biopsia"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true

* #01 "Cabecera"
* #02 "Documento"
* #03 "nose"
*/

