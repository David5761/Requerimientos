Feature: US01: Como usuario quiero buscar rutinas diarias alimentarias para mantenerme en forma.

Scenario: Búsqueda automática por recomendación
Given el usuario se encuentre en la pantalla principal
When selecciona la opción Rutinas Alimenticias
Then podrá ver la lista de Rutinas Alimenticias recomendadas para el usuario

Scenario:  Búsqueda específica por nombre de rutina
Given el usuario se encuentre en la pantalla principal
And ingrese al buscador de la seccion Rutinas Alimenticias
When ingrese el "nombre" de la rutina
Then podrá ver la rutina deseada

Scenario: Cancelar búsqueda de la rutina
Given el usuario está en el buscador de Rutinas Alimenticias
When selecciona el botón "Salir"
Then la app dirige al usuario a la pantalla principal

