#! / Usr / bin / env ruby 

class Piedra_Papel_Tijera

def initialize 
  
   @Tabla_jugadas = {'piedra' => 'tijeras', 'papel' => 'piedra', 'tijeras' => 'papel'}
   @eleccion = %w[piedra papel tijeras]   
   @partidas_ganadas_jugador = 0
   @partidas_ganadas_ordenador = 0

end

def generar_maquina (num)
   @eleccion[rand(num)]   
end

def comprobar
   @jugada_valida = 0
   @eleccion.each do |comp|
       if (comp == @jugada_player)
          @jugada_valida = 1
       end
    end
    error = @jugada_valida
end

def jugar (jugada_jugador)
   num = @eleccion.size
   @jugada_player = jugada_jugador
   @jugada_ordenador = generar_maquina(num)  
   error = comprobar()
   raise "La jugada no es una cadena: #{@jugada_player}"   unless @jugada_player.is_a?(String)
   raise "Jugada no valida la jugada es #{@jugada_player}" unless error == 1
      if (@jugada_player == @jugada_ordenador)
         puts "Hay un empate, ya que ambos eligieron #{@jugada_player}"
      else
         comprobacion = @Tabla_jugadas.values_at(@jugada_ordenador);
         if (@jugada_player == comprobacion[0])
            puts "El ordenador ha ganado ya que La jugada del jugador es: #{@jugada_player} y la del ordenador es: #{@jugada_ordenador}"
            @partidas_ganadas_ordenador = @partidas_ganadas_ordenador + 1
         else
            puts "El Jugador ha ganado ya que La jugada del jugador es: #{@jugada_player} y la del ordenador es: #{@jugada_ordenador}"   
            @partidas_ganadas_jugador = @partidas_ganadas_jugador + 1
         end
      end
      puts "el marcador es: partidas ganadas jugador #{@partidas_ganadas_jugador}, partidas ganadas ordenador #{@partidas_ganadas_ordenador}"   
end
end
