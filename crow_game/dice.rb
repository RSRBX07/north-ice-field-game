class Dice 
  
  def roll
    @faces[rand(1..6)]
  end

  private

  def initialize 
    @faces=["corbeau","panier","rouge","vert","jaune","bleu"] 
  end
end