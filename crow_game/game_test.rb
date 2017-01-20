require './field.rb'
require './crow.rb'
require './road.rb'
require './dice.rb'



field = Field.new
road = Road.new
crow = Crow.new
dice = Dice.new

# print field

begin
  face = dice.roll  
  if face == "corbeau" 
      puts (road.add_step).inspect    
  elsif face == "rouge"
      puts field.fruit_remove "red"
  elsif face == "vert"
      puts field.fruit_remove "green"
  elsif face == "jaune"
      puts field.fruit_remove "yellow"
  elsif face == "bleu"
      puts field.fruit_remove "blue"  
  end

end while !(field.basket.is_full?) && (road.road_size >0)

if field.basket.is_full?
    puts "vous avez gagné"
    else
      puts "vous avez perdu"
      end



