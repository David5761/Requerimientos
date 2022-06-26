US11: Ingreso de información nutricional a la base de datos
Feature: Como nutricionista quiero ingresar información a la base de datos para mejorar los progresos de los usuarios

    Scenario: El nutricionista modifica las recomendaciones alimenticias que tiene el cliente
    Given que el nutricionista desea realizar cambios a la nutrición del cliente
    When el nutricionista ingresa el nombre completo del cliente
    And selecciona la opción <Modificar recomendaciones alimenticias>
    And realiza los cambios necesarios en el horario del cliente
    Then el sistema guardará los cambios temporalmente
    And mandará notificación al cliente de que se recomendaron cambios

    Scenario: El cliente está de acuerdo con los cambios realizados
    Given que el cliente recibió la notificación de los cambios realizados por el nutricionista
    And el cliente se encuentra de acuerdo
    When el cliente pulsa <Estoy conforme>
    Then los cambios serán guardados en la base de datos del cliente

    Scenario: El cliente no está de acuerdo con los cambios realizados
    Given que el cliente recibió la notificación de los cambios realizados por el nutricionista
    And el cliente no se encuentra de acuerdo
    When el cliente pulsa el botón <No estoy de acuerdo>
    Then el sistema enviará y el nutricionista recibirá un mensaje del desacuerdo
    And presentará al nutricionista la opción de <Reunión por videollamada> para decidir si se cambiará o no
