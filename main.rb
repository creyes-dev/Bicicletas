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

configuracion_carretera = [['cadena', 'velocidad-11'],
                           ['tamanio_neumatico', '23'],
                           ['color_cinta', 'rojo']]

configuracion_montania = [ ['cadena', 'velocidad-11'],
                           ['tamanio_neumatico', '2.1'],
                           ['amortiguador_delantero', 'Manitou'],
                           ['amortiguador_trasero', 'Fox', false]]

puts Partes_factory.construir(config: configuracion_carretera).inspect

#cadena = Parte.new(nombre: "cadena", descripcion:"Velocidad-11")
#neumatico_carretera = Parte.new(nombre: "tamanio_neumatico", descripcion: "23")
#cinta = Parte.new(nombre: "cinta", descripcion: "rojo")
#neumatico_montania = Parte.new(nombre: "tamanio_neumatico", descripcion: "2.1")
#amortiguador_trasero = Parte.new(nombre: "Amortiguador_trasero", descripcion: "Fox", repuesto_necesario: false)
#amortiguador_delantero = Parte.new(nombre: "Amortiguador_delantero", descripcion: "Manitou")

#partes_bicicleta_carretera = Partes.new([cadena, neumatico_carretera, cinta])

#bicicleta_carretera = Bicicleta.new(
#  tamanio: "L",
#  partes: partes_bicicleta_carretera
#

#puts bicicleta_carretera.tamanio
#puts bicicleta_carretera.repuestos.inspect
#puts bicicleta_carretera.repuestos.size

#carretera = Bicicleta.new(
#   tamanio: "L",
#   partes: Partes_bicicleta_carretera.new(color_cinta: "rojo"))

#puts carretera.tamanio # => "L"
#puts carretera.partes # => {:cadena=>"Velocidad-11", :tamanio_neumatico=>"23", :color_cinta=>"rojo"}

#montania = Bicicleta.new(
#   tamanio: "L",
#   partes: Partes_bicicleta_montania.new(amortiguador_delantero: 'Manitou',
#                                         amortiguador_trasero: 'Fox'))

#puts montania.tamanio # => "L"
#puts montania.partes # => {:cadena=>"Velocidad-11", :tamanio_neumatico=>"2.1", :amortiguador_delantero=>"Manitou"}

#inicio = Date.parse("2019/09/04")
#fin = Date.parse("2019/09/10")

#puts montania.programable?(inicio, fin) # => 2019/09/04 - 2 dias de espera - 2019/09/10

#mecanico = Mecanico.new()
#puts mecanico.programable?(inicio, fin) # => 2019/09/04 - 4 dias de espera - 2019/09/10
