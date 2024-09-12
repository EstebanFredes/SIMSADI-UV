Profile : Muestra
Id: Muestra
Parent : Specimen
Description: "Este es un perfil donde se encontrarán los datos de la muestra"

* identifier 0..1
* accessionIdentifier 1..1
* type 1..1 


* receivedTime 1..1
* request 1..1
* collection 1..1
  * collector  1..1
  * quantity 1..1
* container 1..1
  * description 0..1
  * specimenQuantity 0..1
* status 1..1 
* status MS 
  * ^short = "Estado, valores posibles : 	available | unavailable | unsatisfactory | entered-in-error"
  * ^definition = "Estado del diágnostico solicitado del paciente."
* status = #available
* status from http://hl7.org/fhir/ValueSet/specimen-status

* note 0..* 
* subject 1..1













