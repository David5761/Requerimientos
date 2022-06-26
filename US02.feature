Feature: US02: Como usuario quiero registrar mis horarios de alimentación .

Scenario: El usuario crea un horario de alimentacón
Given el usuario se encuentra en la pantalla principal
And seleccione la opción Mis horarios de alimentación
When el usuario hace click en el botón nuevo
And se muestra una tabla horaria
And personaliza la "hora" de consumo de un <alimento_bebida>
And hace click en el boton Registrar
Then el sistema mostrará el nuevo horario en su lista de horarios.
Examples:
| hora    |       alimento_bebida     |
| 08:00am | avena , pan, queso, jugo  |
| 10:00am | manzana, frutos secos     |
| 2:00pm  | ensalada, pechuga de pollo|

Scenario: El usuario edita su horario de alimentación
Given el usuario se encuentra en la pantalla principal
And seleccione la opción Mis horarios de alimentación
And seleccione el horario a editar
When el usuario hace click en el botón editar
And se muestra el horario
And edite la "hora" y el <alimento_bebida>
And hace click en el botón Guardar
Then el sistema actualizará el horario.
Examples:
| hora    |       alimento_bebida      | Nueva hora | Nuevo alimento_bebida     |
| 08:00am | avena , pan, queso, jugo   | 09:30am    | leche , cereales,galleta  |
| 10:00am | manzana, frutos secos      | 11:00am    | naranja, frutos secos     |
| 02:00pm | ensalada, pechuga de pollo | 01:30pm    | sopa, lentejas, pollo sancochado|

Scenario: El usuario elimina el horario de alimentación
Given el usuario se encuentra en la pantalla principal
And seleccione la opción Mis horarios de alimentación
And selecciona el horario a eliminar
When el usuario hace click en el botón eliminar
Then el horario se borrará de la lista Mis horarios de alimentación