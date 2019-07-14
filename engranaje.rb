# Clase Engranaje
# Calcula las pulgadas de un engranaje de una bicicleta dependiendo
# de la proporcion entre los dientes del plato y el piñón y las dimensiones de la llanta
# y del neumático trasero
# @example
# ```ruby
# engranaje = Engranaje.new(52, 11, 24, 1.25)
# engranaje.pulgadas_engranaje
# @author creyes-dev

class Engranaje
  attr_reader :plato, :piñon, :rueda
  def initialize(plato, piñon, rueda=nil)
    @plato = plato
    @piñon = piñon
    @rueda = rueda
  end

  def proporcion
    plato / piñon.to_f
  end

  def pulgadas_engranaje
    # neumatico va alrededor de la llanta dos veces por diámetro
    proporcion * rueda.diametro
  end
end

class Rueda
  attr_reader :llanta, :neumatico

  def initialize(llanta, neumatico)
    @llanta = llanta
    @neumatico = neumatico
  end

  def diametro
    llanta + (neumatico * 2)
  end

  def circunferencia
    diametro * Math::PI
  end
end
