Instance: EjBundleSolicitud
InstanceOf: BundleSolicitud
Usage: #example
Title: "Ejemplo Bundle solicitud"
Description: "Ejemplo de estructura de un perfil Bundle para la solicitud de biopsia"

* identifier.value = "bundleSoli"  
* type = #document

* timestamp = "2024-05-28T22:12:21Z"

* entry[entryDocumento].fullUrl = "https://esteban.fredes.cl/fhir/siscarpeta/StructureDefinition/DocumentoBiopsia"
* entry[entryDocumento].resource = EjDocBiopsiaBundle

//* entry[entryPaciente].fullUrl = ""
* entry[entryPaciente].resource = PacienteBundleSoli


Instance : PacienteBundleSoli
Title : "Ejemplo de Recurso Paciente"
Description: "Paciente ficticio nacional CI Chilena, sin sistema de validación \"http://regcivil.cl/Validacion/RUN\" ficticio, cuyo nombre se decribe mediante el oficial y uno social. La dirección tampoco es real."
InstanceOf : Paciente
Usage : #inline

* id = "P1"
* identifier.use = #official   

* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI."
* identifier.type.coding.code = #NNCHL
* identifier.type.coding.display = "RUN"

* identifier.value = "66.666.666-k"

* active = true

* name[NombreOficial].use = #official
* name[NombreOficial].family = "Vader"
* name[NombreOficial].family.extension[segundoApellido].valueString	 = "Perez" 
* name[NombreOficial].given[0] = "Anaqueen"
* name[NombreOficial].given[+] = "Darth"

* gender = #male
* birthDate = "1970-03-24"

* extension[SexoBiologico].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico"
* extension[SexoBiologico].valueCodeableConcept.coding.system = "http://hl7.org/fhir/administrative-gender"
* extension[SexoBiologico].valueCodeableConcept.coding.code = #male


Instance: EjDocBiopsiaBundle
Description: "Ejemplo de documento de solicitud de biopsia."
InstanceOf: DocumentoBiopsia
Usage: #inline

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

Instance: PrestadorBunndleSoli
InstanceOf: Profesional
Usage: #inline
Title: "PrestadorBunndleSoli"
Description: "Ejemplo de perfil prestador individual para ejemplo de bundle de documento de solicitud de biopsia"

* id = "Profesional1"
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
