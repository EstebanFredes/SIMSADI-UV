Logical: Informe 
Id:   Informe 
Title: "Modelo de un informe de biopsia"
//Characteristics: #can-be-target

* Paciente        1..1  BackboneElement  "Nombres del pacienteSS"
  * nombres       1..1  BackboneElement "Nombres del paciente"            
  * given         1..1     HumanName   "1er nombre de pila del paciente"
 

  * identificador     0..1  CodeableConcept "identificador del paciente"
  * gender            1..1 Coding "Codigo asociado al sexo del paciente"               
    
  //* gender from  https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSNombreCampana
    
  * fechaNacimeinto   0..1  date            "fecha de nacimiento"

  * Hospital          0..*  Reference(Location)  "Organización que solicita el exámen"
  * servicio          0..*  Reference(Location)  "servicio o unidad que solicita la muestra"

  * nombreProfesional 0..* Reference(Practitioner)  "nombre del profesional que realiza el exámen"
    * PrNombre       1..1  string  "1er nombre de pila del profesional"
    // 2doNombre       1..1  string      "2do nombre de pila del profesional"
  




* ambitoClinico               1..1     BackboneElement  "wwece"
  * diagnosticoClinico        0..*     DomainResource "Diágnostico clínico del paciente"
  * antecedentesClinico       1..1     Reference(DiagnosticReport)   "Antecedentes clínicos del paciente"
  * examenMacroscopico        0..*     Reference(DiagnosticReport) "exámen macroscopico del paciente"
  * descripcionMicroscopica   0..*     Reference(BiologicallyDerivedProduct) "descripción micróscopica de la muestra"
  * diagnostico               1..1     CodeableConcept "Diágnostico del paciente"
  





 


