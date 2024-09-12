// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: Profesional
Parent: PrestadorCL 
Id: Profesional
Description: "Este es un perfil donde se encontrarán los datos personales del profesional"

* active 1..1
* name  0..1
  * family 1..1 
* identifier    1..1 
* telecom 1..1 
* qualification 0..*
  * code 1..1
* gender 1..1
* birthDate 1..1





