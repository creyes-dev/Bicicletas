require_relative 'parte'

class Partes
  attr_reader :partes

  def initialize(partes)
    @partes = partes
  end

  # TemplateMethod que permitirá que las subclases agreguen sus propios repuestos
  #def post_initialize(opts)
  #  nil
  #end

  def repuestos
    partes.select{|parte| parte.repuesto_necesario}
  end

  #def tamanio_neumatico_defecto
  #  raise NotImplementedError
  #end

  #def repuestos_local
  #  {}
  #end

  #def cadena_defecto
  #  "velocidad-11"
  #end
end