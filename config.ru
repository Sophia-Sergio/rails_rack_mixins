# config.ru
# Modificar el archivo config.ru para adaptarlo a los siguientes requerimientos:
# Si se ingresa a la url /index:
# Agregar un código de respuesta 200.
# Agregar en los Response Headers un Content-type de tipo text/html.
# Agregar en el Response Body una etiqueta de título que contenga un texto "Estás en el Index!".
# Si se ingresa a la url /otro:
# Agregar un código de respuesta 200.
# Agregar en los Response Headers un Content-type de tipo text/html.
# Agregar en el Response Body una etiqueta de título que contenga un texto "Estás en otro landing!".
# Si se ingresa a cualquier otra url:
# Agregar un código de respuesta 404.
# Agregar en los Response Headers un Content-type de tipo text/html.
# Agregar en el Response Body el archivo 404.html creado al inicio.

# config.ru
require 'rack'
# some class
class MiPrimeraWebApp
 def call(env)
  if env['REQUEST_PATH'] == '/index'
    [200, { 'Content-Type' => 'text/html; charset=utf-8' }, ['<h1>Estás en el index</h1>']]
  elsif env['REQUEST_PATH'] == '/otro'
    [200, { 'Content-Type' => 'text/html; charset=utf-8' }, ['<h1>Estás en otro landing</h1>']]
  elsif env['REQUEST_PATH'] == '/'
    [200, { 'Content-Type' => 'text/html; charset=utf-8' }, ['<h1>Te encuentras en la nada</h1>']]
  else
    [404, { 'Content-Type' => 'text/html; charset=utf-8' }, [File.read('index.html')]]
  end
 end
end

run MiPrimeraWebApp.new