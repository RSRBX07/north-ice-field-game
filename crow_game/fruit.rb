class Fruit
  attr_reader :cueilli
  attr_reader :color

  COLORS = [:red, :blue, :yellow, :green]
    
  def initialize color_symbol
    raise ArgumentError.new "new fruit color should be one of #{Fruit::COLORS}, got #{color_symbol}" unless Fruit::COLORS.include? color_symbol

    puts " le fruit n'est pas cueilli, il est toujours positionné sur l'arbre"
    @cueilli = false
    @color = color_symbol
  end

end

