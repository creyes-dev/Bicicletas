require_relative 'engranaje'
require_relative 'bicicleta'
require_relative 'bicicleta_carretera'
require_relative 'bicicleta_montania'
require_relative 'bicicleta_reclinada'
# require_relative 'partes_bicicleta_carretera'
# require_relative 'partes_bicicleta_montania'
require_relative 'parte'
require_relative 'recorrido'

require 'date'

cadena = Parte.new(nombre: "cadena", descripcion:"Velocidad-11")
puts cadena.nombre

carretera = Bicicleta.new(
   tamanio: "L",
   partes: Partes_bicicleta_carretera.new(color_cinta: "rojo"))

puts carretera.tamanio # => "L"
puts carretera.partes # => {:cadena=>"Velocidad-11", :tamanio_neumatico=>"23", :color_cinta=>"rojo"}

montania = Bicicleta.new(
   tamanio: "L",
   partes: Partes_bicicleta_montania.new(amortiguador_delantero: 'Manitou',
                                         amortiguador_trasero: 'Fox'))

puts montania.tamanio # => "L"
puts montania.partes # => {:cadena=>"Velocidad-11", :tamanio_neumatico=>"2.1", :amortiguador_delantero=>"Manitou"}

inicio = Date.parse("2019/09/04")
fin = Date.parse("2019/09/10")

puts montania.programable?(inicio, fin) # => 2019/09/04 - 2 dias de espera - 2019/09/10

mecanico = Mecanico.new()
puts mecanico.programable?(inicio, fin) # => 2019/09/04 - 4 dias de espera - 2019/09/10
