class Fruit
  attr_reader :cueilli
  attr_reader :color
  attr_reader :fruit_nombre
  COLORS = [:red, :blue, :yellow, :green]
    
  def initialize color_symbol
    raise ArgumentError.new "new fruit color should be one of #{Fruit::COLORS}, got #{color_symbol}" unless Fruit::COLORS.include? color_symbol

    puts " le fruit n'est pas cueilli, il est toujours positionné sur l'arbre"
    @cueilli = false
    @color = color_symbol
  end


  def decroche_toi
    @color = 55
    @fruit_nombre -= 1
    puts "le fruit est cueilli, et se trouve donc dans le panier"

  end
end

