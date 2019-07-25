require_relative('partes')

class Partes_bicicleta_carretera < Partes
  attr_reader :color_cinta

  def initialize(**opts)
    super
  end

  # TemplateMethod que permitirá que las subclases agreguen sus propios repuestos
  def post_initialize(**opts)
    @color_cinta = opts[:color_cinta]
  end

  def tamanio_neumatico_defecto
    "23"
  end

  def repuestos_local
    { color_cinta: color_cinta }
  end
end