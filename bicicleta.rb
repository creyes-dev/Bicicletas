class Bicicleta
  attr_reader :tamanio, :color_cinta

  def initialize(**opts)
    @tamanio = opts[:tamanio]
    @color_cinta = opts[:color_cinta]
  end

  # Cada bicicleta tiene el mismo tamaño por defecto del neumático y de la cadena
  def repuestos
    { cadena:   '11-velocidad',
      tamanio_neumatico: '23',
      color_cinta: color_cinta
    }
  end

  # otros métodos
end

bici = Bicicleta.new(
  tamanio: 'M',
  color_cinta: 'rojo'
)

puts bici.tamanio

puts bicicleta.repuestos

