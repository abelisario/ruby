# Programa de simulación de piezas de dominó.
#
# Ej: ruby -r "./dominoes.rb" -e "Dominoes.new.print"
#
# Author::   Alexander Belisario

# Esta clase genera arreglo de pares numéricos que
# representan piezas de dominó.
class Dominoes
   
  @@numbers = [0, 1, 2, 3, 4, 5, 6]
   
  # retorna arreglo piezas de dominó
  def get_tiles()
     tiles = []
     @@numbers.each {|number_a| 
        @@numbers.each {|number_b|
           if(number_a <= number_b )
              tiles.push([number_a, number_b])
           end
         }  
      }
      return tiles
   end

   #Permite mostrar por consola la representación 
   #del arreglo en formato texto.
   def print()
      tiles = get_tiles()
      puts "Tiles: " + tiles.to_s
   end

end