require_relative 'engranaje'
require_relative 'bicicleta'
require_relative 'bicicleta_carretera'
require_relative 'bicicleta_montania'
require_relative 'bicicleta_reclinada'
require_relative 'partes_factory'
require_relative 'partes_bicicleta_carretera'
require_relative 'partes_bicicleta_montania'
require_relative 'partes'
require_relative 'recorrido'

require 'date'

# Configuración de partes de las distintas bicicletas soportadas por la aplicación

configuracion_carretera = [['cadena', 'velocidad-11'],
                           ['tamanio_neumatico', '23'],
                           ['color_cinta', 'rojo']]

configuracion_montania = [ ['cadena', 'velocidad-11'],
                           ['tamanio_neumatico', '2.1'],
                           ['amortiguador_delantero', 'Manitou'],
                           ['amortiguador_trasero', 'Fox', false]]

# instanciación de una bicicleta de carretera
carretera = Bicicleta.new(tamanio: 'L',
                          partes: Partes_factory.construir(config:
                            configuracion_carretera))

# Obtener repuestos de la bicicleta de carretera
puts carretera.repuestos

# instanciación de una bicicleta de montania
montania = Bicicleta.new(tamanio: 'M',
                         partes: Partes_factory.construir(config:
                          configuracion_montania))

# Obtener repuestos de la bicicleta de montania
puts montania.repuestos # Observar que no muestra la parte amortiguador_trasero

puts montania.tamanio # => "L"

# Obtener disponibilidad de la bicicleta de montania y de un mecanico
# ambos sin recorridos programados
inicio = Date.parse("2019/09/04")
fin = Date.parse("2019/09/10")

puts montania.programable?(inicio, fin) # => 2019/09/04 - 1 dias de espera - 2019/09/10

mecanico = Mecanico.new()
puts mecanico.programable?(inicio, fin)
