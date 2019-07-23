require_relative 'bicicleta'

class Bicicleta_carretera < Bicicleta
  attr_reader :color_cinta

  def initialize(**opts)
    super
  end

  def post_initialize(opts)
    @color_cinta = opts[:color_cinta]
  end

  def repuestos
    super.merge(color_cinta: color_cinta)
  end

  def tamanio_neumatico_defecto
    "23"
  end

  def dias_espera
    1
  end
end
