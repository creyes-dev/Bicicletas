class Bicicleta
  attr_reader :estilo, :tamanio, :color_cinta,
              :amortiguador_delantero, :amortiguador_trasero

  def initialize(**opts)
    @estilo = opts[:estilo]
    @tamanio = opts[:tamanio]
    @color_cinta = opts[:color_cinta]
    @amortiguador_delantero = opts[:amortiguador_delantero]
    @amortiguador_trasero = opts[:amortiguador_trasero]
  end

  # Cada bicicleta tiene el mismo tamaño por defecto del neumático y de la cadena
  def repuestos
    if estilo == :carretera
      { cadena:   '11-velocidad',
        tamanio_neumatico: '23', # milímetros
        color_cinta: color_cinta
      }
    else
      { cadena: '11-velocidad',
        tamanio_neumatico: '2.1', # pulgadas
        color_cinta: amortiguador_delantero
      }
  end

  # otros métodos
end

bici = Bicicleta.new(
  estilo: :montania,
  tamanio: 'M',
  amortiguador_delantero: 'Manitou',
  amortiguador_trasero: 'Fox'
)

puts bicicleta.repuestos
