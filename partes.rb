class Partes
  attr_reader :cadena, :tamanio_neumatico

  def initialize(**opts)
    @cadena = opts[:cadena] || cadena_defecto
    @tamanio_neumatico = opts[:tamanio_neumatico] || cadena_defecto
    post_initialize(opts)
  end

  # TemplateMethod que permitirá que las subclases agreguen sus propios repuestos
  def post_initialize(opts)
    nil
  end

  def repuestos
    { cadena: cadena,
      tamanio_neumatico: tamanio_neumatico }.merge(repuestos_local)
  end

  def tamanio_neumatico_defecto
    raise NotImplementedError
  end

  def repuestos_local
    {}
  end

  def cadena_defecto
    "velocidad-11"
  end
end