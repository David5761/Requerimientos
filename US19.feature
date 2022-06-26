US19 Ingreso dentro de la aplicación como Nutricionista/Trainer
Feature: US19: Como Nutricionista/Trainer quiero ingresar en la aplicación para brindar soporte a los usuarios que requieran.

    Scenario: El Nutricionista/Trainer busca ayuda de usuarios     
    Given El Nutricionista/Trainer va a ingresar a la aplicación
    And ingresa de manera satisfactoria con sus datos 
    And se valida los datos
    When da click en “usuarios disponibles”
    Then visualiza la lista de usuarios a ayudar
    And escoge el usuario para contactarse y recomendar ayuda.
    
    Scenario: El Nutricionista/Trainer no encuentra usuarios
    And ingresa de manera satisfactoria con sus datos 
    And se valida los datos
    When da click en “usuarios disponibles”
    Then el sistema no encontró usuarios a ayudar
    And aparece usuarios recientes a ayudar.