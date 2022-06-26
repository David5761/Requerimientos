Feature: Como usuario quiero poder actualizar mi peso cada cierto tiempo para realizar un chequeo continuamente.

Scenario: El usuario actualiza su peso
Given el usuario registró su peso base al iniciar sesión
And el usuario está en la pantalla principal
And ingrese a la opción de mi perfil
And existe una seccion de Peso personal
When el usuario hace click en actualizar peso
And digita su nuevo <peso>
Then el usuario recibe un <reporte estadistico> de su historial de peso
And se guarda el <fecha> en el que se registró el nuevo peso
Example:
|  fecha 1   |  peso 1  |   fecha 2  |  peso 2  |          reporte estadistico            |
| 15/06/2022 |   78kg   | 15/08/2022 |   74kg   |grafico estadistico del historial de peso|

Scenario: el usuario edita/corrije un peso registrado
Given el usuario acaba de registrar un <peso>
And quiere editarlo porque se equivocó o quiere cambiarlo
When el usuario hace click en un <peso> registrado
And hace click en editar
And digita el <peso> correcto
Then se actualiza la cantidad del peso y se actualiza el reporte estadistico
Example:
 |  fecha 2 |peso 2| nuevo peso 2|
 |15/08/2022| 75kg |     74kg    |


Scenario: El usuario cancela actualizar peso
Given el usuario está en la pantalla principal
And ingrese a la opción de mi perfil
And existe una seccion de Peso personal
When el usuario hace click en actualizar peso
And luego hace click en cancelar
Then se cancela la accion de actualizar 