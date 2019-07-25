class Parte
  attr_reader :nombre, :descripcion, :repuesto_necesario

  def initialize(nombre:, descripcion:, repuesto_necesario: true)
    @nombre = nombre
    @descripcion = descripcion
    @repuesto_necesario = repuesto_necesario
  end
end