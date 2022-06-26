US09: Visualizar información nutricional de los usuarios
Feature: US09: Como nutricionista quiero visualizar la información nutricional de los usuarios registrados en la aplicación

    Scenario: El nutricionista consulta el peso del cliente
    Given que el nutricionista quiere visualizar el peso del cliente objetivo
    When el nutricionista ingresa el nombre completo del cliente
    And selecciona el <perfil del cliente existente>
    And presiona el botón <Peso del cliente>
    Then el sistema retornará el <peso del cliente>
Examples:
    | cliente_existe | peso | mensaje |
    |      true      |  72  |    72   |
    |      true      |  80  |    80   |
    
    Scenario: Calcular el IMC del cliente
    Given que el nutricionista quiere calcular el IMC del cliente objetivo
    When el nutricionista ingresa el nombre completo del cliente
    And selecciona el <perfil del cliente existente>
    And presiona el botón <Índice de masa corporal del cliente>
    Then el sistema retornará el <IMC> y el nivel de peso
Examples:
    | cliente_existe | peso | altura | IMC |    mensaje     |
    |      true      |  68  |  172   | 23  |  23 - Normal   |
    |      true      |  79  |  176   | 25  | 25 - Sobrepeso |

    Scenario: El cliente al que el nutricionista busca no existe
    Given que el nutricionista quiere buscar al cliente objetivo
    When el nutricionista ingresa el nombre completo del cliente
    And la búsqueda realizada no suelta resultados
    Then el sistema notificará que el cliente no existe