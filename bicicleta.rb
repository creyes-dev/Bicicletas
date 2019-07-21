class Bicicleta
  attr_reader :tamanio, :cadena, :tamanio_neumatico

  def initialize(**opts)
    @tamanio = opts[:tamanio]
    @cadena = opts[:cadena] || cadena_defecto
    @tamanio_neumatico = opts[:tamanio_neumatico] || tamanio_neumatico_defecto
  end

  def repuestos
    { tamanio_neumatico: tamanio_neumatico,
      cadena: cadena }
  end

  def cadena_defecto
    "velocidad-11"
  end

  def tamanio_neumatico_defecto
    raise NotImplementedError
  end
end
