/*
Logical: Solicitud
Id:  Solicitud 
Title: "Modelo de solicitud de biopsia"
//Characteristics: #can-be-target
sdType: Extension


* Paciente        1..1  BackboneElement  "Nombres del pacienteSS"
  * nombres       1..1  BackboneElement "Nombres del paciente"            
  * given         1..1  HumanName   "primer nombre de pila del paciente"

  * identificador   0..1  CodeableConcept "identificador del paciente"

// DatosComplementarios 
  
// Previsión         1..* Reference(Organization) "Previsión del paciente"
  * fechaNacimiento   0..1    Date "fecha de nacimiento del paciente"
  * gender            1..1 Coding "Codigo asociado al sexo del paciente"     
   //* gender from  https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSNombreCampana

* MedicoSolicitante  0..*  Reference(Practitioner)  "nombre del profesional que solicita el examen"
  * nombres       1..1  BackboneElement "Nombres del medico solicitante"
 
  * identificador   0..1  CodeableConcept "identificador del medico solicitante"

* DiagnosticoClinico  0..* Reference( ServiceRequest) "diagnostico clinico"


* AntecedentesClinicos 0..* Reference(observation) "antecedentes clinicos del paciente"

*/




