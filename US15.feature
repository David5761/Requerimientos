
US15
Feature: US15
    Como trainer quiero ingresar información  a la base de datos 
    para ampliar las rutinas de ejercicios dentro de la aplicación

    Background: 
            Given El trainer va a ingresar informacion y 
            rutinas de ejercicios en la base de datos

    Scenario: El trainer puede editar informacion en la base de datos
        When ingresa toda la informacion intencionada
        And da click en el boton de confirmar
        Then informacion editada
        |ID  Usuario	| Peso nuevo	|Id rutina nueva|
        |       123	    |      90 kg	|	321	        |

    Scenario: El trainer no puede ingresar a la informacion solicitada
        When no puede ingresar a la informacion solicitada
        And no puede acceder a las rutinas
        Then se muestra "No se pudo ingresar"
        
    Scenario:   El trainer no modifica rutina de ejercicios
        When El trainer no modifica la rutina de ejercicios
        And la rutina del usuario no se actualiza
        Then Se muestra "Rutina desactualizada, por favor contacte a su entrenador"