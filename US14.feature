US14
Feature: US14
    Como trainer quiero tener acceso a los datos corporales y progresos
    de los usuarios para actualizar sus rutinas de ejercicios semanales

    Background: 
            Given el trainer quiere acceso a <base de datos>
            And editar rutinas de <usuarios>

    Scenario: El trainer consulta y edita rutinas de los usuarios 
        Then podra elegir un nuevo usuario para editar.

    Scenario: El trainer ingresa al menos un dato invalido
        Given El trainer ingresa al menos un dato invalido
        When intenta dar click en boton de consluta de usuario  
        Then No habra ninguna respuesta
        
    Scenario: El trainer ha editado esa rutina hace menos de 7 dias
        When El trainer da click en el boton de registrar rutina
        And rutina editado hacen menos de 7 dias
        Then se mostrara el mensaje "Plan modificado hace menos de tres dias"
        And se visualizara la opcion "Modificar".