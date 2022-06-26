Feature: Como usuario quiero registrarme objetivos alimenticios para alcanzarlos y lograr mis objetivos.

Scenario: El usuario crea objetivos según su criterio
Given el usuario está en la pantalla principal
And ingrese a la opción de mi perfil
And existe una seccion de objetivos personales
When hace click en agregar objetivos
And digite su nuevo <objetivo>
Then se inserta en la lista de objetivos alimenticios
Example:
|     nuevo objetivo       |  guardar  |
| beber 2lts de agua diario| confirmado|

Scenario: El usuario agrega objetivos que la app recomiende
Given el usuario está en la pantalla principal
And ingrese a la opción de mi perfil
And existe una seccion de objetivos personales
When hace click en agregar objetivos
And aparece una lista de objetivos recomendados
And el usuario elija el objetivo que quiera
Then se inserta en la lista de objetivos alimenticios
Example:
|     objetivo recomendado    |   agregar   |
|comer ensalada todos los días|  confirmado |

Scenario: El usuario elimina objetivos de la lista de objetivos alimenticios
Given el usuario está en la pantalla principal
And ingrese a la opción de mi perfil
And existe una seccion de objetivos personales
When hace click en el objetivo que quiere eliminar
And selecciona la opción de eliminar objetivo
Then el objetivo se elimina de la lista de objetivos alimenticios

