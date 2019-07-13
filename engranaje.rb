# Clase Engranaje
# Calcula las pulgadas de un engranaje de una bicicleta dependiendo
# de la proporcion entre los dientes del plato y del piñón y las dimensiones de la llanta
# y del neumático trasero
# @example
# ```ruby
# engranaje = Engranaje.new(52, 11, 24, 1.25)
# engranaje.pulgadas_engranaje
# @author creyes-dev

class Engranaje
  attr_reader :plato, :piñon, :llanta, :neumatico
  def initialize(plato, piñon, llanta, neumatico)
    @plato = plato
    @piñon = piñon
    @llanta = llanta
    @neumatico = neumatico
  end

  def proporcion
    plato / piñon.to_f
  end

  def pulgadas_engranaje
    # neumatico va alrededor de la llanta dos veces por diámetro
    proporcion * (llanta + (neumatico * 2))
  end
end
