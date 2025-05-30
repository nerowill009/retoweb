#language: es
Característica: SauceDemo Suite Test


  @caso1 @sauceDemo
  Esquema del escenario: Iniciar sesión exitosamente con credenciales válidas
    Dado que el usuario visita la pagina de inicio de SauceDemo
    Cuando ingresa las credenciales "<user>" y "<pass>" para iniciar sesión
    Entonces debería ser redirigido a la página de productos

    Ejemplos:
      | user          | pass         |
      | standard_user | secret_sauce |


  @caso2 @sauceDemo
  Esquema del escenario: validar los mensajes de error de login fallido
    Dado que el usuario visita la pagina de inicio de SauceDemo
    Cuando ingresa las credenciales "<user>" y "<pass>" para iniciar sesión
    Entonces valida que el mensaje de error contiene "<error>"

    Ejemplos:
      | user            | pass          | error                                                       |
      | standard_user   | secret_sauce1 | Username and password do not match any user in this service |
      | locked_out_user | secret_sauce  | Sorry, this user has been locked out.                       |
      | problem_user    |               | Password is required                                        |
      |                 | secret_sauce  | Username is required                                        |

  @caso3 @sauceDemo
  Esquema del escenario: Completar proceso de compra exitosamente
    Dado que el usuario visita la pagina de inicio de SauceDemo
    Y ingresa las credenciales "<user>" y "<pass>" para iniciar sesión
    Y agrega el producto "<producto>" al carrito
    Cuando el usuario ve los productos en el carrito
    Y hace clic en el botón de checkout
    Y completa el formulario con nombre "<nombre>", apellido "<apellido>" y código postal "<zip>"
    Y confirma la orden
    Entonces debería ver el mensaje de confirmación "<mensaje_confirmacion>"

    Ejemplos:
      | user          | pass         | producto            | nombre | apellido  | zip   | mensaje_confirmacion      |
      | standard_user | secret_sauce | Sauce Labs Backpack | Brayan  | Villegas | 12345 | Thank you for your order! |

