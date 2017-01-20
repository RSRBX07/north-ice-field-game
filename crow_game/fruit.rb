class Fruit
  attr_reader :cueilli?
  attr_reader :color
end

def decroche_toi(nouvelle_position)
  @position = nouvelle_position
  puts "le fruit est cueilli, et se trouve donc dans le panier"

end

def initialize
  @position = "arbre"
  puts " le fruit n'est pas cueilli, il est toujours positionné sur l'arbre"
end