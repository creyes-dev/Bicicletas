require_relative 'bicicleta'

class Bicicleta_montania < Bicicleta
  attr_reader :amortiguador_delantero, :amortiguador_trasero

  def initialize(**opts)
    super
  end

  def post_initialize(opts)
    @amortiguador_delantero = opts[:amortiguador_delantero]
    @amortiguador_trasero = opts[:amortiguador_trasero]
  end

  # Cada bicicleta tiene el mismo tamaño por defecto del neumático y de la cadena
  def repuestos
    super.merge(amortiguador_delantero: amortiguador_delantero)
  end

  def tamanio_neumatico_defecto
    "2.1"
  end

  def dias_espera
    2
  end
end
