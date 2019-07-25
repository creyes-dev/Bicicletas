require_relative 'programable'

class Bicicleta
  include Programable
  attr_reader :tamanio, :partes

  def initialize(tamanio:, partes:)
    @tamanio = tamanio
    @partes = partes
  end

  def repuestos
    partes.repuestos
  end

  def dias_espera
    1
  end
end