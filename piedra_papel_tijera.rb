#! / Usr / bin / env ruby 



Tabla_jugadas = {'piedra' => 'tijeras', 'papel' => 'piedra', 'tijeras' => 'papel'}
@eleccion = %w[piedra papel tijeras]
error = 0
partidas_ganadas_jugador = 0
partidas_ganadas_ordenador = 0

if (ARGV.length == 0 || ARGV.length > 1)
   puts "Error en el numero de parametros, se han pasado #{ARGV.length} parametros"
else
      jugada_player = ARGV.shift
      @eleccion.each do |comp|
      if (comp == jugada_player)
         error = 1
      end
      end
      if (error == 1)
         num = @eleccion.length
         jugada_ordenador = @eleccion[rand(num)]
         if (jugada_player == jugada_ordenador)
            puts "Hay un empate, ya que ambos eligieron #{jugada_player}"
         else
            comprobacion = Tabla_jugadas.values_at(jugada_ordenador);
            if (jugada_player == comprobacion[0])
               puts "El ordenador ha ganado ya que La jugada del jugador es: #{jugada_player} y la del ordenador es: #{jugada_ordenador}"
               partidas_ganadas_ordenador = partidas_ganadas_ordenador + 1
            else
               puts "El Jugador ha ganado ya que La jugada del jugador es: #{jugada_player} y la del ordenador es: #{jugada_ordenador}"   
               partidas_ganadas_jugador = partidas_ganadas_jugador + 1
            end
         end
         puts "el marcador es: partidas ganadas jugador #{partidas_ganadas_jugador}, partidas ganadas ordenador #{partidas_ganadas_ordenador}"
      else
         puts "Error ha introducido una jugada no valida"
      end
end


