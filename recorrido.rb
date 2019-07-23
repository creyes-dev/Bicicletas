require_relative 'programable'

class Recorrido
  attr_reader :bicicletas, :clientes, :vehiculos

  def preparar(preparadores)
    preparadores.each{|preparador|
      preparador.preparar_recorrido(self)
    }
  end
end

class Mecanico
  include Programable
  def preparar_recorrido(recorrido)
    recorrido.bicicletas.each { |bicicleta|
      preparar_bicicleta(bicicleta)
    }
  end

  def preparar_bicicleta(bicicleta)
    # ...
  end

  def dias_espera
    4
  end
end

class CoordinadorRecorrido
  include Programable
  def preparar_recorrido(recorrido)
    comprar_comida(recorrido.clientes)
  end

  def comprar_comida(clientes)
    # ...
  end

  def dias_espera
    2
  end
end

class Conductor
  include Programable
  def preparar_recorrido(recorrido)
    vehiculo = recorrido.vehiculo
    cargar_combustible(vehiculo)
    cargar_tanque_agua(vehiculo)
  end

  def cargar_combustible(vehiculo)
    # ...
  end

  def cargar_tanque_agua(vehiculo)
    # ...
  end
end
