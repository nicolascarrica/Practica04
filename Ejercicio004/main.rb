require_relative 'jugador'
require_relative 'juego'


jugador_a = Jugador.new("Jugador A")
jugador_b = Jugador.new("Jugador B")


juego = Juego.new(jugador_a, jugador_b)


ganador = juego.determinar_ganador

# Imprimir el resultado del juego
if ganador == "Empate"
  puts "El juego ha terminado en un empate"
else
  puts "El ganador del juego es: #{ganador.nombre}"
end