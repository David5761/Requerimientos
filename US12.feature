US12: Registro de horarios alimenticios adecuados para el usuario
Feature: Como nutricionista quiero registrar múltiples horarios alimenticios en la aplicación para que el usuario elija el que más se adecÚa

    Scenario: Registrar un horario alimenticio de un cliente
    Given que el nutricionista se encuentra en el perfil del cliente
    And pulsa el botón <Crear nuevo horario>
    When el nutricionista completa un formato de horario con las recomendaciones alimenticias
    And pulsa el botón <Guardar horario>
    Then el sistema guardará el horario alimenticio.

    Scenario: Eliminar un horario alimenticio
    Given que el nutricionista se encuentra en el perfil del cliente
    And pulsa el botón <Visualizar opciones de horarios disponibles>
    When el nutricionista selecciona un horario que desea eliminar
    And pulsa el botón <Eliminar horario>
    Then el sistema eliminará el horario alimenticio.

    Scenario: Seleccionar un horario principal a seguir
    Given que el cliente dispone de al menos un horario alimenticio
    When el cliente visualiza todos los horarios disponibles
    And selecciona una de las opciones
    And pulsa el botón <Elegir horario>
    Then el sistema guardará la elección
    And el nutricionista será notificado de la elección.