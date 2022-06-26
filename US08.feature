
Feature: US08 = Como usuario quiero registrar mis avances en la aplicación diariamente

Scenario: El sistema le pide registrar avances diarios al usuario
Given el usuario inicio sesión por primera vez en el día
And el sistema le pedirá que registre sus avances del dia
And se muestre una opcion de Registrar Avances
When presione el botón de Registrar Avances, el sistema le pedirá antes de ingresar lo que consumió el día anterior 
And que ejercicios de los propuestos hizo durante el día
And hace click en Registrar 
Then  la lista de avances del usuario se actualizará.

Example: 
| Día | Tipo de comida | Calorias totales |       Ejercicios             |
| 12  | Menestras      | 1200 calorias    | 20 planchas y 10 sentadillas |

Scenario: El usuario registra sus avances diarios
Given el usuario se encuentra en el menu principal
And no tuvo tiempo de registrar la primera vez que ingresó a la aplicación
And presione en la seccion de Avances
And vaya a la opcion de Registro de Avances
When presione el botón de Registrar Avances, el sistema le pedirá antes de ingresar lo que consumió el día anterior o que ejercicios hizo durante el día
And hace click en Registrar
Then la lista de avances del usuario se actualizará

Example:
| Día | Tipo de comida | Calorias totales |           Ejercicios                        |
| 12  | Menestras      | 1150 calorias    | 20 saltos a la cuerda y 30 minutos de pesas |

Scenario: El usuario no registro su avance diario
Given el usuario se encuentra en el menu principal
And el sistema reconocio que no ingreso el dia anterior su avance
When presione un botón cualquiera se le pedira obligatoriamente que ingrese su avance diario del dia de ayer
And hace click en Registrar
And el usuario ingresa sus datos
Then la lista de avances diarios se actualizará