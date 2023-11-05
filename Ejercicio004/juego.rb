class Juego
    def initialize(jugador_a, jugador_b)
      @jugador_a = jugador_a
      @jugador_b = jugador_b
    end
  
    def determinar_ganador
      energia_a = 100
      energia_b = 100
      ganador = nil
  
      (1..10).each do |turno|
        jugada_a = @jugador_a.jugada(turno)
        jugada_b = @jugador_b.jugada(turno)

        puts "Turno #{turno}: Jugador A juega #{jugada_a}, Jugador B juega #{jugada_b}"
  
        if jugada_a == "Golpe" && jugada_b == "Bloqueo"
          energia_a -= 10
        elsif jugada_a == "Bloqueo" && jugada_b == "Golpe"
          energia_b -= 10
        elsif jugada_a == "Golpe" && jugada_b == "Golpe"
          energia_a -= (energia_a * 0.2).round
          energia_b -= (energia_b * 0.2).round
        end
  
        puts "Energía Jugador A: #{energia_a}, Energía Jugador B: #{energia_b}"
        
        if energia_a <= 0
          ganador = @jugador_b
          break
        elsif energia_b <= 0
          ganador = @jugador_a
          break
        elsif turno == 10
          if energia_a > energia_b
            ganador = @jugador_a
          elsif energia_a < energia_b
            ganador = @jugador_b
          else
            ganador = "Empate"
          end
        end
      end
    
      ganador
    end
  end
  