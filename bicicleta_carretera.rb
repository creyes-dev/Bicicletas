require_relative 'bicicleta'

class Bicicleta_carretera < Bicicleta
  def initialize(**opts)
    super
  end

  def dias_espera
    1
  end
end
