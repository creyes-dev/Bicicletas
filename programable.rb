require_relative 'programa'

module Programable
  attr_writer :programa

  def programa
    @programa ||= Programa.new
  end

  # Un recurso programable es un recurso que no esta programado en el 
  # periodo que comprende la fecha inicial y la final considerando los
  # dias de espera
  def programable?(fecha_inicial, fecha_final)
    !programado?(fecha_inicial - dias_espera, fecha_final)
  end

  def programado?(fecha_inicial, fecha_final)
    # self ese el objeto al cual se adjunta el modulo actual
    programa.programado?(self, fecha_inicial, fecha_final)
  end

  # Objetos incluidos pueden sobreescribir
  def dias_espera
    0
  end
end
