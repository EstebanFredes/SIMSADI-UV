/*
CodeSystems=CSStatusReason 
Id: CSStatusReason 
Title: "Razón del cambio de estado (prescripción)"
Description: "Códigos que indican la razón por la cual una Prescripción ha cambiado"
*^version = "0.1.0"
*^status= #active
*^experimental = false
*^date = "2022-01-18T00:00:00-03:00
*^contact.name ="HL7 CHile"
*^contact.telecom.system =  #email
*^contact.telecom.value = *chair@hl7chile.cl
*^jurisdiction = urn:iso:std:iso:3166#cl "chile"
*^caseSensitive = true



* insert MetadataVSCS
*^caseSensitive = true 

#altchoice "primero probar otro tratamiento""Esta terapia se ha ordenado 

ValueSet =CSStatusReason 
Id: CSStatusReason 
Title: "Razón del cambio de estado (prescripción)"
Description: "Códigos que indican la razón por la cual una Prescripción ha cambiado"
*^version = "0.1.0"
*^status= #active
*^experimental = false
//*^date = "2022-01-18T00:00:00-03:00  // para comentar 
*^contact.name ="HL7 CHile"
*^contact.telecom.system =  #email
*^contact.telecom.value = *chair@hl7chile.cl
*^jurisdiction = urn:iso:std:iso:3166#cl  "chile"
*^caseSensitive = true

*codes from CsstatusReason




ValuSet
//# apretar sushi para ejecutar 
//# aplicar geronce para obtener la guía se le agrega algo  mas 
//# par sacar la guía dejar comentarios 



*maritalStatus 1..1
 *^short = "código de fatalidad"
 * text 0..1
   *^short= " el estado marital en texto libre"
 * coding 1..1 
   *^short = "códigos terminologicos obligatorios"
   * sytem 1..1  "API terminologica"
   *code 1..1  "código de alguno del value set"
   *display 0..1  "glosa asociada al código" 
*/