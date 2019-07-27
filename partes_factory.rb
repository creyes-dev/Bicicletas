module Partes_factory
  def self.construir(config:, clase_parte: Parte, clase_partes: Partes)
    clase_partes.new(
      config.collect{|config_parte|
        clase_parte.new(
          nombre: config_parte[0],
          descripcion: config_parte[1],
          repuesto_necesario: config_parte.fetch(2, true))})
  end
end
