// 1. Ejemplo de paciente 
Instance : EjPaciente
Title : "Ejemplo de Recurso Paciente"
Description: "Paciente ficticio nacional CI Chilena, sin sistema de validación \"http://regcivil.cl/Validacion/RUN\" ficticio, cuyo nombre se decribe mediante el oficial y uno social. La dirección tampoco es real."
InstanceOf : Paciente
Usage : #example

//Identificación por Cédula Chilena
* id = "P1"
* identifier.use = #official    //obligado

* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI."
* identifier.type.coding.code = #NNCHL
* identifier.type.coding.display = "RUN"

//**/ identifier.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSIdentificador."
* identifier.value = "66.666.666-k"

//registro de paciente activo
* active = true

//Nombre Oficial
//* name[NombreOficial].use = #official
* name[NombreOficial].use = #official
* name[NombreOficial].family = "Vader"
// * name[NombreOficial].family.extension[mothers-family].valueString	 = "Perez" //uso de la extensión
* name[NombreOficial].family.extension[segundoApellido].valueString	 = "Perez" //uso de la extensión
* name[NombreOficial].given[0] = "Anaqueen"
* name[NombreOficial].given[+] = "Darth"

//sexo registrado al nacer y fecha de nacimiento
* gender = #male
* birthDate = "1970-03-24"
///*
* extension[SexoBiologico].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico"
* extension[SexoBiologico].valueCodeableConcept.coding.system = "http://hl7.org/fhir/administrative-gender"
* extension[SexoBiologico].valueCodeableConcept.coding.code = #male
//*/

//2.Ejemplo de diágnostico
Instance : EjDiagnostico
Title : "Ejemplo de un Diagnóstico de cáncer."
Description: "Diagnóstico confirmado de  cáncer mediante una solicitud de biopsias."
InstanceOf : Diagnostico
Usage : #example


* id = "identificador"
* identifier.use = #official    //obligado

* identifier.type.coding.system = "https://hl7.org/fhir/R4/v2/0203"
* identifier.type.coding.code = #SNO
* identifier.type.coding.display = "Serial Number"

* code = #100-8
* code.coding.system = "http://loinc.org"

* identifier.value = "12.676.445-k"

* effectiveDateTime = "2023-07-13T14:15:30-04:00"
* subject.display = "Paciente"
* status = #final
* issued = "2024-06-22T14:15:30-03:00"
* performer.display = "profesional"
* resultsInterpreter.display = "profesional"
* specimen.display = "Extracto de colón"
* result.display = "Se observa hipertrofia de la epidermis con presencia de queratinocitos displásicos,
La dermis muestra un infiltrado inflamatorio crónico con predominancia de linfocitos."
* conclusion = "La biopsia realizada en el tejido del paciente ha revelado la presencia de células malignas, compatibles con un carcinoma de tipo adenocarcinoma. Las características histológicas observadas sugieren que la neoplasia es de grado intermedio, con infiltración en tejidos adyacentes y evidencia de mitosis aumentada."
* presentedForm.title = "Resultado de Biopsia"
* presentedForm.title = "Descripción Microscopica"
* presentedForm.title = "Descripción Macroscopica"
* presentedForm.url = 	"http://hl7.org/fhir/ValueSet/languages"




//3.Ejemplo de documento de solicitud de biopsia
Instance: EjDocumento
Description: "Ejemplo de documento de solicitud de biopsia."
InstanceOf: DocumentoBiopsia
Usage: #example




* id = "doc"
* identifier.value = "Documento"
* status = #final 
* type.coding.system = "http://loinc.org"
* type.coding.code =  #12345-6 
* type.coding.display = "Biopsy Tissue Specimen"

* subject.display = "Paciente"

* date = "2024-05-20"
* section.title = "documento de Biopsia"


* author.display = "profesional"

* event.period.start = "2024-04-20"
* event.period.end = "2024-07-20"
 
* section[AntecedentesClinicos].title = "Antecedentes Clínicos."
//* section[AntecedentesClinicos].code.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento1"
* section[AntecedentesClinicos].code.coding.code = #01
* section[AntecedentesClinicos].entry.display = "Historial de enfermedades de miembros de la familia Narrativa"

* section[ProcedimientosQuirurgicos].title = "Procedimientos Quirurgicos."
//* section[ProcedimientosQuirurgicos].code.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento1"
* section[ProcedimientosQuirurgicos].code.coding.code = #03
* section[ProcedimientosQuirurgicos].entry.display = "Nota de operación quirúrgica procedimiento quirúrgico Narrativa"

* section[Diagnostico].title = "Diagnostico."
//* section[Diagnostico].code.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento1"
* section[Diagnostico].code.coding.code = #05
* section[Diagnostico].entry.display = "Nota de operación quirúrgica Diagnóstico postoperatorio Narrativa"



//4.Ejemplo de organización 

Instance : EjOrganizacionCL
Title : "Ejemplo de organización que solicita examen."
Description: "Institución u organización que solicita la toma del examen."
InstanceOf : Organizacion
Usage : #example

//* status = #active  //obligatorio 
* name = "Centro de Salud FALP"
* address.line = "Av El amanecer, 657, Comuna de Las Cruces."
* telecom.system = #phone
* telecom.use = #mobile
* telecom.value = "33-6548776"

//5. Ejemplo de Documento Informe de biopsia

Instance: EjDocumentoResultados 
Description: "Ejemplo de documento de resultados de Biopsia"
InstanceOf: DocumentoResultados
Usage: #example

* id = "DOcumento"
* identifier.value = "Documento de resultados"
* status = #final 
* type.coding.system = "http://loinc.org"
* type.coding.code =  #66121-5 
* type.coding.display = "Biopsy Report"
* type = #66121-5

//* subject.reference = "Paciente"
* subject = Reference(EjPaciente)

* date = "2024-05-12"

* section.code = #01
//* author.reference = "profesional"
* author = Reference(EjProfesional)
* section.title = "Documento de resultado de biopsia"

* event.period.start = "2024-04-13"
* event.period.end = "2024-07-23"

* section[AntecedentesClinicos].title = "Antecedentes Clínicos."
//* section[AntecedentesClinicos].code.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento1"
* section[AntecedentesClinicos].code.coding.code = #01
* section[AntecedentesClinicos].entry.display = "Ámbitoclinico"

* section[ExamenMacroscopico].title = "Examen Macróscopico."
//* section[ExamenMacroscopico].code.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento1"
* section[ExamenMacroscopico].code.coding.code = #02
* section[ExamenMacroscopico].entry.display = "Servicio Solicitante."

* section[DescripcionMicroscopica].title = "DescripciónMicroscópica."
//* section[DescripcionMicroscopica].code.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento1"
* section[DescripcionMicroscopica].code.coding.code = #04
* section[DescripcionMicroscopica].entry.display = "Muestra"

* section[DiagnosticoInicial].title = "Diagnóstico Inicial."
//* section[DiagnosticoInicial].code.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento1"
* section[DiagnosticoInicial].code.coding.code = #06
* section[DiagnosticoInicial].entry.display = "DiagnósticoInicial"

* section[DiagnosticoFinal].title = "Diagnóstico Final."
//* section[DiagnosticoFinal].code.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDocumento1"
* section[DiagnosticoFinal].code.coding.code = #07
* section[DiagnosticoFinal].entry.display = "DiagnósticoFinal"



// 6. Ejemplo de prestador
Instance: EjProfesional
Description: "Ejemplo de Prestador"
InstanceOf: Profesional
Usage: #example
//Identificación por Cédula Chilena
* id = "P1"
* identifier.use = #official    //obligado

* identifier.type.coding.system = "https://hl7.org/fhir/R4/v2/0203/index.html"
* identifier.type.coding.code = #SNO
* identifier.type.coding.display = "Serial Number"

* identifier.system = "http://regcivil.cl/Validacion/RUN"
* identifier.value = "666 234 653 234"

//registro de paciente activo
* active = true
//Nombre Oficial
* name.use = #official
* name.family = "viaux"

 //dos contactos, un celular y un email
* telecom.system = #phone
* telecom.use = #mobil
* telecom.value = "943561833"

* telecom.system = #email
* telecom.use = #work
* telecom.value = "Darth@imperio.com"
* qualification.identifier.system = "http://terminology.hl7.org/CodeSystem/v2-0360|2.7"
* qualification.code.coding = #AS
* qualification.identifier.value = "Associate of Science"
* gender = #male
* birthDate = "1970-03-24"

  
// 7.Ejemplo de Muestra
Instance : EjMuestra
Title : "Ejemplo de muestra biológica para procedimiento."
Description: "Ejemplo de datos necesarios muestra de procedimiento."
InstanceOf : Specimen
Usage : #example

* id = "identificador"
* identifier.use = #official    //obligado

* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #ACSN
* identifier.type.coding.display = "Accession ID"
* identifier.value = "13456"

* id = "identificador"

* accessionIdentifier.system = "http://snomed.info/sct"
* accessionIdentifier.value = "imágenes"
* accessionIdentifier.type.coding.system = "http://snomed.info/sct"
* accessionIdentifier.type.coding.code = #111002
* accessionIdentifier.type.coding.display = "Parathyroid"

* receivedTime = "2024-06-22T14:15:30-03:00"
* parent.display = "Estómago"
* request.display = "servicio solicitante"
* collection
  * collector.display = "Profesional"
  * quantity.value = 1

* container.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0487"
* container.type.coding.code = #CST
* container.type.coding.display = "Fluid, Cyst"

* subject.display = "Paciente"
* status = #available
* note.text = "Las células principales del estómago son:  zimogénicas, peptídicas,​ las cuales son un tipo de célula que forman parte de las glándulas gástricas del estómago, y están encargadas de la secreción de pepsinógeno, lipasa gástrica y quimosina." 




// 8.Ejemplo de servicio Solicitante
Instance : EjServicioSolicitante
Title : "Ejemplo de Servicio Solicitante"
Description: "Ejemplo de datos del Servico Solicitante."
InstanceOf : ServicioSolicitante
Usage : #example

* id = "identificador"

//http://hl7.org/fhir/ValueSet/identifier-use|4.0.1
* identifier.type.coding.system = "http://hl7.org/fhir/identifier-use" //yo creo q se va a necesitar un codesystem para esto
* identifier.type.coding.code = #official
//* identifier.type.coding.display = "procedimientoQuirúrgico"
* status = #active
* subject.display = "Paciente"
* priority = #urgent
* intent = #original-order

* requester.display = "organization"
* requester.display = "Hospital"
* performer.display = "profesional"
* performer.display = "Juan"
* locationReference.display = "localización"
* locationReference.display = "mentón"
* reasonReference.display = "diagnosticReport"

* supportingInfo.display = "informe de Muestra"
* specimen.display = "Muestra"




// 9. Ejemplo de Procedimientos Quirúrgico
Instance : EjProcedimientosQuirurgicos
Title : "Ejemplo de Procedimientos Quirúrgicos."
Description: "Ejemplo de datos de Procedimientos Quirúrgicos."
InstanceOf : ProcedimientosQuirurgicos
Usage : #example
//Identificación por Cédula Chilena
* id = "identificador"
* identifier.use = #official    //obligado

* identifier.type.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSIdentificador."
* identifier.type.coding.code = #01
* identifier.type.coding.display = "RUN"

//**/ identifier.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSIdentificador."
* identifier.value = "20.666.234-k"
* subject.display = "Paciente"
* status = #preparation
* report.type = "diagnostico"
* report.display =  "Órgano piel"
* performedDateTime = "2024-06-22T14:15:30-03:00"
* note.text = "Las células neoplásicas son negativas para Citoqueratina 7, Citoqueratina 20, TTF-1, con positivas para p40.  Difuso, intenso.  Con estos hallazgos no es posible determinar si la lesión metastásica es de origen pulmonar o parotidea.  Debe correlacionada con imágenes radiológicas.  Estudio de PDL-1  FUE REALIZADO por Dra. Sanhueza en Clínica Santa María con clon22C3, con alta expresión y TPS mayor a 50 % (cercano al 80 %)."


// 10. Ejemplo de Ámbito CLínico

Instance : EjAmbitoClinico
Title : "Ejemplo de ámbito Clínico."
Description: "descripción de datos correspondientes al Ámbito Clínico."
InstanceOf : AmbitoClinico
Usage : #example

* subject.display = "Paciente"
//* code.text = "cáncer de mama"
//* code.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDiagnostico"
//* code.coding.code = #03
//* code.coding.display = "cáncer de mama"
* section.code.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDiagnostico"
* section.code = #03
* date = "2023-03-24"
* id = "CondicionClinica"
* title = "Descripción de datos correspondientes al ámbito Clínico"
//* clinicalStatus.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSCondicionClinica."
//* clinicalStatus.coding.code = #01
//* clinicalStatus.coding.display = "active"
* extension[CondicionClinica].valueCode = #01
* author.display = "Profesional"
//* verificationStatus.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSEstadoClinico"
//* verificationStatus.coding.code = #confirmed
//* verificationStatus.coding.display = "Confirmado"
* extension[SospechaDiagnosticada].valueCode = #confirmed
* type.text = "Ámbito Clínico"
* status = #final

/*
Instance: EjBundleSolicitud
InstanceOf: BundleSolicitud
Usage: #example
Title: "Ejemplo Bundle solicitud"
Description: "Ejemplo de estructura de un perfil Bundle para la solicitud de biopsia"

* identifier.value = "bundleSoli"  
* type = #document

* timestamp = "2024-05-28T22:12:21Z"

//* entry[entryDocumento].fullUrl = "https://esteban.fredes.cl/fhir/siscarpeta/StructureDefinition/DocumentoBiopsia"
//* entry[entryDocumento].resource = Reference(DocumentoBiopsia)
* entry[entryDocumento].resource.identifier.value = "123"
* entry[entryDocumento].resource.type.coding.system = "http://loinc.org"
* entry[entryDocumento].resource.type.coding.code = #57830-2
* entry[entryDocumento].resource.type.coding.display = "Admission request Document" // cambiar pq ese documento no sirve

* entry[entryDocumento].resource.status = #final
* entry[entryDocumento].resource.subject.reference = "file:///C:/guiaFalp-main/guiaFalp-main/output/Patient-P1"
* entry[entryDocumento].resource.date = "2013-02-01T12:30:02Z"
* entry[entryDocumento].resource.author.reference = "file:///C:/GI-FALP-master/falp/output/Practitioner-example-PrestadorIndividual"

* entry[entryPaciente].fullUrl = "https://esteban.fredes.cl/fhir/siscarpeta/StructureDefinition/Paciente"
* entry[entryPaciente].resource.id = "paciente"

* entry[entryPaciente].resource.identifier.use = #official    //obligado
* entry[entryPaciente].resource.identifier.value = "22.255.225-5"

* entry[entryPaciente].resource.identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI."
* entry[entryPaciente].resource.identifier.type.coding.code = #NNCHL
* entry[entryPaciente].resource.identifier.type.coding.display = "RUN"

* entry[entryPaciente].resource.active = true

* entry[entryPaciente].resource.name[NombreOficial].use = #official
* entry[entryPaciente].resource.name[NombreOficial].family = "Vader"

* entry[entryPaciente].resource.name[NombreOficial].family.extension[segundoApellido].valueString	 = "Perez" //uso de la extensión
* entry[entryPaciente].resource.name[NombreOficial].given[0] = "Anaqueen"
* entry[entryPaciente].resource.name[NombreOficial].given[+] = "Darth"

* entry[entryPaciente].resource.gender = #male
* entry[entryPaciente].resource.birthDate = "1970-03-24"

* entry[entryPaciente].resource.extension[sexoBio].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico"
* entry[entryPaciente].resource.extension[sexoBio].valueCodeableConcept.coding.system = "http://hl7.org/fhir/administrative-gender"
* entry[entryPaciente].resource.extension[sexoBio].valueCodeableConcept.coding.code = #male
*/

/*
Instance: EjBundleResultados
InstanceOf: BundleResultados 
Usage: #example
Title: "Ejemplo BundleResultados"
Description: "BundleResultados"
*/

