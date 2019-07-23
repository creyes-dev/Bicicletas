class Programa
  def programado?(programable, fecha_inicial, fecha_final)
    puts "Este #{programable.class} está " +
         "disponible #{fecha_inicial} - #{fecha_final}"
    false
  end
end
