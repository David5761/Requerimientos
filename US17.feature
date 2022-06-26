US17 Registro a la aplicación como Usuario
Feature: US17: Como usuario quiero ingresar a la aplicación para  mejorar y seguir un proceso de cambio para mejorar mi estado físico.

    Scenario: El usuario ingresa sus datos correctamente
    Given El usuario se encuentra en el inicio de la aplicación
    When ingresa su correo y contraseña
    Then el sistema validará si es correcto
	And Aparece un cuadro con “Registro exitoso”
    
    Scenario: El usuario ya está registrado en el sistema
    Given el usuario ingresa datos ya registrados        
    When observa que el sistema emite una alerta de “Datos ya registrados”
    Then da click en “aceptar”
	And regresará al menú de iniciar sesión
        
    Scenario: El usuario no ingresa datos correctos
    When ingrese datos incorrectos el sistema alertara erroneo
    And da click en “aceptar”
    Then  se le pedira que ingrese datos correctamente nuevamente.

Examples:
    |	       Correo		| Contraseña   | 	     Fecha     	|    IDuser 	    |
    |     dabicho@ou.com    | ***********   |        11/01/2022 |	 2405           |