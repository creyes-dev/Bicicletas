require_relative('partes')

class Partes_bicicleta_montania < Partes
  attr_reader :amortiguador_delantero, :amortiguador_trasero

  def initialize(**opts)
    super
  end

  def post_initialize(**opts)
    @amortiguador_trasero = opts[:amortiguador_trasero]
    @amortiguador_delantero = opts[:amortiguador_delantero]
  end

  def tamanio_neumatico_defecto
    "2.1"
  end

  def repuestos_local
    { amortiguador_delantero: amortiguador_delantero }
  end
end