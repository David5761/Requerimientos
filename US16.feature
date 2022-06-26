US16 Ingreso a la aplicación como usuario
Feature: US16: Como usuario quiero ingresar a la aplicación

    Scenario: El usuario ingresa datos correctos
    Given El usuario se encuentra en el inicio de la aplicación
	And ingresa sus datos de inicio de sesión
    When el usuario ingresa los datos correctamente
    And se encuentra verificado
    Then visualiza el resto de la aplicacion
        
    Scenario: El usuario no ingresa datos correctos
    When da click en <Iniciar Sesión>
    And se verificó que los datos son incorrectos
    Then se le aparecerá un mensaje de Error de autenticación

