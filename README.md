## Reto de Automatización Web - Selenium - POM

Automatización web de la página **Sauce Demo** 

## Tecnologías y Herramientas

- **Selenium WD:** Para la automatización de pruebas de interacción con el navegador.
- **Cucumber:** Para realizar pruebas basadas en comportamiento (BDD).
- **Serenity BDD:** Para gestionar las pruebas automatizadas y generar reportes detallados.
- **JUnit 5:** Framework de pruebas para la ejecución y gestión de las pruebas.
- **Maven:** Gestión de dependencias y construcción del proyecto.

## Requisitos

Asegúrate de tener las siguientes herramientas instaladas antes de ejecutar el proyecto:

- **Java 11** o superior.
- **Maven** para manejar las dependencias del proyecto.
- Un navegador compatible con **Selenium**

## Instalación

1. Clona este repositorio a tu máquina local:

    ```bash
    git clone https://github.com/nerowill009/retoweb.git
    ```


## Ejecución de las Pruebas

Usar la clase runner para la ejecucion de las pruebas o ejecutar el comando maven: 
clean test "-Dcucumber.options=--tags @Caso1"


## Reportes
Serenity generará reportes detallados después de la ejecución de las pruebas. 
Los reportes estarán disponibles en el directorio target/site/serenity/. Para visualizar el reporte, abre el archivo index.html en tu navegador.

