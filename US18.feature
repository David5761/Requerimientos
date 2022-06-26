US18 Registro dentro de la aplicación como Nutricionista/Trainer
Feature: US18: Como Nutricionista/Trainer quiero registrarme en la aplicación para brindar mis servicios y conocimientos.

    Scenario: El nutricionista/trainer ingresa a registrarse
    Given El nutricionista/trainer va a registrarse para ayudar a los usuarios
    When ingresa a la plataforma “Registro de Coach”
    Then coloca sus datos personales
    And le da click a “registrar”
    And se retorna al menú principal
    
    Scenario: El Nutricionista/trainer no ingresa correctamente sus datos
    When coloca incorrectamente sus datos personales
    Then visualizará error y “intente nuevamente”
    And una vez registrado, aparecerá una bienvenida
        
    Scenario: El Nutricionista/Trainer se registra correctamente
    When ingresa a su sesión
    And le da click a “brindar servicios”
    Then aparecen los horarios y fechas libres para laborar.

Examples:
 |   IDcoach   |  HoraD  |          Fecha     	   |    IDuser      |
 |      125    |  8:30   |        11/01/2022       |	    2405    |