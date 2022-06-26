
Feature: US05 :Como usuario quiero registrarme objetivos personales para alcanzar un estado físico deseable.

Scenario: El usuario personaliza los objetivos que desea alcanzar
Given el usuario se encuentra en su perfil de usuario
And apreta la opción de Objetivos personales
And se muestra la lista de objetivos ya creados anteriormente
When el usuario hace click en el boton de crear objetivo. 
And elija qué <peso> desea obtener dentro de un <tiempo estimado> o <nivel de calorias> que desea generar en un determinado tiempo.
And hace click en el boton Registrar
Then  el sistema mostrará la nueva lista de objetivos actualizada y se enviará a un trainer para la revisión del mismo.

Example: 
    |Peso | Tiempo estimado |
    |75 kg|     3 meses     |

    |Nivel calorias| Tiempo estimado |
    | 1600         |  1 semana       |   

Scenario: El usuario usa los objetivos semanales que la aplicación brinda

Given el usuario se encuentra en su perfil de usuario
And apreta la opción de Objetivos Semanales
And se muestra la lista de objetivos ya creados por la aplicación
When el usuario hace click en el boton de revisar objetivos. 
And el sistema le mostrará los objetivos semanales que debe realizar para mantener buena condición fisica, quema de calorias, etc.
And el usuario elige los objetivos que tratara de cumplir 
Then el sistema le mostrará los objetivos elegidos y el tiempo restante para cumplirlos.

Scenario: El usuario cancela el registro de objetivos personales
Given el usuario se encuentra en su perfil de usuario
And apreta la opción de Objetivos personales 
And se muestra la lista de objetivos ya creados anteriormente
When el usuario hace click en el boton de crear objetivo. 
And elija qué <peso> desea obtener dentro de un <tiempo estimado> o <nivel de calorias> que desea generar en un determinado tiempo.
And hace click en el boton Cancelar
Then el sistema regresa al menú principal
