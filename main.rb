require_relative 'engranaje'

@rueda = Rueda.new(26, 1.5)
puts @rueda.circunferencia

engranaje = Engranaje.new(52, 11, @rueda)
puts engranaje.pulgadas_engranaje

engranaje = Engranaje.new(52, 11)
puts engranaje.proporcion
