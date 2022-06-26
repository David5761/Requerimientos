US13
Feature: US13
    Como nutricionista quiero registrar varios planes alimenticios
    para cada tipo de usuario y las necesidades que se deben satisfacer

    Background: 
            Given que el nutricionista quiere visualizar los registros alimenticios

    Scenario: El nutricionista consulta registros alimenticios
        When seleciona la opcion "crear nuevo plan alimenticio" 
        And ingresa nuevo plan        
        Then visualiza la "nueva tabla planes alimenticios"
        Example:

            |ID  plan alimenticio	| Duración del plan  |  Mañana	|   Tarde	        |   Noche	|
          	| 	234		            |      1 mes		 | Avena	| Filete y ensalada	|Ensalada	|


    Scenario: No existe usuario
        When el usuario no existe en <registros alimenticios>
        Then se mostrara la opcion "Ingrese Usuario"
        Example:
            |ID  plan alimenticio	|ID usuario | Duración del plan  |  Mañana | Tarde            | Noche  |
          	| 	234		            |       321 |      1 mes 	     |Avena    | Filete y ensalada|Ensalada|

    Scenario: Usuario ya ah resibido un plan alimenticio
        When Usuario ya ha recibido un plan en menos de 5 dias
        Then se mostrara el mensaje "Plan modificado hace menos de tres dias"
        And se visualizara la opcion "Modificar".       