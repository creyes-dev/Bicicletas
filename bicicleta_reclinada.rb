require_relative 'bicicleta'

class Bicicleta_reclinada < Bicicleta

  attr_reader :bandera

  def initialize(**opts)
    @bandera = opts[:bandera]
    super
  end

  def repuestos
    super.merge(bandera: bandera)
  end

  def cadena_defecto
    "velocidad-10"
  end

  def tamanio_neumatico_defecto
    "28"
  end
end
