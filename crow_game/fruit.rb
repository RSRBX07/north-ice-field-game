class Fruit
  attr_reader :cueilli
  attr_reader :color
  attr_reader :fruit_nombre
  COLORS =[red, blue, yellow, green]
    
  def initialize 
    @fruit_nombre = 4
    @color = COLORS[:red]
    @cueilli = false

    puts " le fruit n'est pas cueilli, il est toujours positionné sur l'arbre"
  end


  def decroche_toi (COLORS[0])
    @color = 
    @fruit_nombre -= 1
    puts "le fruit est cueilli, et se trouve donc dans le panier"

  end
end