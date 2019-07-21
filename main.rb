require_relative 'engranaje'
require_relative 'bicicleta'
require_relative 'bicicleta_carretera'
require_relative 'bicicleta_montania'
require_relative 'bicicleta_reclinada'

@rueda = Rueda.new(26, 1.5)
puts @rueda.circunferencia

engranaje = Engranaje.new(52, 11, @rueda)
puts engranaje.pulgadas_engranaje

engranaje = Engranaje.new(52, 11)
puts engranaje.proporcion

carretera = Bicicleta_carretera.new(
  tamanio: 'M',
  color_cinta: 'rojo')

puts carretera.color_cinta # => rojo
puts carretera.tamanio_neumatico # => 23 (por defecto bici carretera)
puts carretera.cadena # => velocidad-11 (por defecto)

montania = Bicicleta_montania.new(
  tamanio: 'S',
  tamanio_neumatico: '2.4',
  amortiguador_delantero: 'Manitou',
  amortiguador_trasero: 'Fox')

puts montania.amortiguador_delantero # => Manitou
puts montania.tamanio_neumatico # => 2.4
puts montania.cadena # => velocidad-11 (por defecto)

reclinada = Bicicleta_reclinada.new(
  tamanio: 'L',
  bandera: 'Argentina')

puts reclinada.bandera # => Argentina
puts reclinada.tamanio_neumatico # => 28 (por defecto bici reclinada)
puts reclinada.cadena # => velocidad-10 (por defecto para reclinada)
