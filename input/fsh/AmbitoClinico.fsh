Profile: AmbitoClinico
Parent: Composition
Description: "Documento de datos el ámbito clínico."



* extension contains CondicionClinica named  clinicalStatus 0..1

  * ^short = "Estado clínico del paciente"
  * ^definition = "Se Define el estado clínico de salud del paciente "
* extension contains SospechaDiagnosticada named  verificationStatus	0..1
  * ^short = "Antecedentes Clínicos del paciente"
  * ^definition = "Se defienen los antecedentes clínicos de paciente"

* section.code  1..1

* subject 1..1
* subject only Reference(Paciente)
