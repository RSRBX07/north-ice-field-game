class TreeSet
    attr_reader :trees

    def initialize
        @trees ={}
        @trees[red: 4]
        @trees[green: 4]
        @trees[blue:  4]
        @trees[yellow: 4]        
    end     
    def fruit_remove color
        return false if @trees[color.to_sym] = 0 
        @trees[color.to_sym] -= 1         
    end
end

class Basket
    attr_reader :gathed , :capacity
    def initialize value
        @gathed = 0
        @capacity = value
    end
    
    def gath_fruit
        @gathed += 1
    end
end

class Field
    attr_reader :tree_set , :basket 

    def initialize
        @tree_set = TreeSet.new
        @basket = Basket.new 16
    end 

    def fruit_remove color
       @tree_set.fruit_remove color
       @basket.gath_fruit
    end   
end