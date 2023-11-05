class Jugador
    def initialize(nombre)
      @nombre = nombre
      @energia = 100
    end
  
    def jugada(nro_turno)
      jugadas_posibles = ["Golpe", "Bloqueo"]
      jugada = jugadas_posibles.sample
    end
  
    def nombre
      @nombre
    end
  
    def energia
      @energia
    end
  end