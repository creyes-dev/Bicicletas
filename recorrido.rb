class Recorrido
  attr_reader :bicicletas, :clientes, :vehiculos

  def preparar(preparadores)
    preparadores.each{ |preparador|
      case preparador
      when Mecanico
        preparador.preparar_bicicletas(bicicletas)
      when CoordinadorRecorrido
        preparador.comprar_comida(clientes)
      when Conductor
        preparador.cargar_tanque_agua(vehiculo)
      end
    }
  end
end

class Mecanico
  def preparar_bicicletas(bicicletas)
    bicicletas.each{ |bicicleta| preparar_bicicleta(bicicleta)}
  end

  def preparar_bicicleta(bicicleta)
    # ...
  end
end

class CoordinadorRecorrido
  def comprar_comida(clientes)
    # ...
  end
end

class Conductor 
  def cargar_combustible(vehiculo)
    # ...
  end

  def cargar_tanque_agua(vehiculo)
    # ...
  end
end