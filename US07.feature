
Feature: US07 = Como usuario quiero adecuar los planes alimenticios a los calorias que ingiero normalmente.

Scenario: El usuario desea buscar planes alimenticios por categoria alimentaria
Given el usuario se encuentra en la pantalla principal
And se dirige hacia abajo para encontrar la seccion de planes alimenticios
And selecciona el boton adecuar planes alimenticios
When hace click en Buscar planes alimenticios por categoria alimentaria
And podrá visualizar un botón de adecua tu plan alimenticio,
And se abrira un formulario donde podrá ingresar los <calorias> que ingiere en un día normal 
Then según la base de datos se le recomendará las mejores dietas para la persona 
And se le mostrara múltiples planes alimenticios con sus ganacias calóricas, energéticas, etc.
|     Dia        |     Tarde      |    Noche     |
|   110 calorias | 900 calorias   | 500 calorias |

Scenario: El usuario desea buscar planes alimenticios unicamente por su peso y altura
Given el usuario se encuentra en la pantalla principal
And se dirige hacia abajo para encontrar la seccion de planes alimenticios
And selecciona el boton adecuar planes alimenticios
When hace click en Buscar planes alimenticios <peso> y <altura>
And podrá visualizar un botón de adecua tu plan alimenticio, 
Then la base de datos llamara a los atributos de peso y altura del usuario actualmente
And se le mostrara múltiples planes alimenticios con sus ganacias calóricas, energéticas, etc.

| Peso  |   Altura   | 
| 60 kg | 1.70 metros|

Scenario: El usuario no encuentra su plan alimenticio adecuado para sus necesidades
Given el usuario se encuentra en la pantalla principal
And se dirige hacia abajo para encontrar la seccion de planes alimenticios
And selecciona el boton adecuar planes alimenticios
When hace click en Buscar planes alimenticios peso y altura o categoria alimentaria
And podrá visualizar un botón de adecua tu plan alimenticio, 
And no encuentra un plan alimenticio para sus necesidades
Then la base de datos no llamara a ningun plan y el usuario quedara disatisfecho.