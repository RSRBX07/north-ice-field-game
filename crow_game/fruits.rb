class Fruit
  attr_reader :name , :color , :nombre
  attr_reader :position
end

def move_fruit(nouvelle_position)
  @position = nouvelle_position
  puts "le fruits est dans le panier"

end

def initialize
  @position = "arbre"
end