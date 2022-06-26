US10: Brindar una reunión mensual con el usuario
Feature: US10:Como nutricionista quiero brindar un informe mensual mediante una reunión al usuario para brindarle consejos y ruta fitness del mes

    Scenario: Convocar a una reunión por videollamada de Zoom
    Given que el nutricionista necesita absolver las dudas consultadas por un cliente
    When el nutricionista ingresa el nombre completo del cliente
    And presione el botón <Convocar a reunión>
    And selecciona la opción <Por Zoom>
    Then el sistema abrirá la aplicación Zoom
    And enviará una notificación al cliente con el link a la sala

    Scenario: Convocar a una reunión por videollamada de Whatsapp
    Given que el nutricionista necesita absolver las dudas consultadas por un cliente
    When el nutricionista ingresa el nombre completo del cliente
    And presione el botón <Convocar a reunión>
    And selecciona la opción <Por Whatsapp>
    Then el sistema abrirá la aplicación Whatsapp
    And enviará un mensaje al cliente avisando que se realizará una llamada en breve

    Scenario: El cliente cancela la reunión
    Given que el nutricionista haya iniciado el proceso de aviso al cliente para reunión
    And el cliente decide cancelarlo
    When el cliente ingresa en un textbox la razón de haber cancelado
    And pulsa el botón <Cancelar reunión>
    Then el sistema enviará al nutricionista el mensaje conteniendo la razón y que la reunión se ha cancelado
