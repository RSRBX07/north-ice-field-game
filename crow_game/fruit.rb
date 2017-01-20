class Fruit
  attr_reader :cueilli
  attr_reader :color
end

def decroche_toi(color)
  @color = color
  @color -= 1
  puts "le fruit est cueilli, et se trouve donc dans le panier"

end

def initialize
  @color = 4
  @cueilli = false
  puts " le fruit n'est pas cueilli, il est toujours positionné sur l'arbre"
end

def cueilli
  @cueilli = true
  puts "le fruit est cueilli"
end