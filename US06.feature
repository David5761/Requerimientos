Feature: US06 = Como usuario quiero ver mi avance periódicamente para ver como estoy avanzando en mi proceso de mantenerme en forma y que es lo que debo mejorar.

Scenario: El usuario desea ver sus avances alimenticios.
Given el usuario se encuentra en la pantalla principal
And seleccione la opción de Avances
And se muestre dos opciones de ver avances por alimentos y otro físico
When ingrese a la sección de Avances Alimenticios
And elige el rango de fecha para ver sus avances en ese tiempo elegido
And presione el boton ver avances
Then el sistema le mostrara todos los avances registrados por el usuario dentro de esa fecha en una lista, ordenada por fecha
And filtrada por avances alimenticios.

Scenario: El usuario desea ver sus avances fisicos.
Given el usuario se encuentra en la pantalla principal
And seleccione la opción de Avances
And se muestre dos opciones de ver avances por alimentos y otro físico
When ingrese a la sección de Avances fisicos
And elige el rango de fecha para ver sus avances en ese tiempo elegido
And presione el boton ver avances
Then el sistema le mostrara todos los avances registrados por el usuario dentro de esa fecha en una lista, ordenada por fecha
And filtrada por avances fisicos.

Scenario: El usuario no quiero ver sus avances
Given el usuario se encuentra en la pantalla principal
And seleccione la opción de Avances
And se muestre dos opciones de ver avances por alimentos y otro físico
When ingrese a la sección de Avances Alimenticios/fisicos
And presione el boton regresar al menu principal
Then volvera al menu principal 
And cancelara la lista a mostrar.