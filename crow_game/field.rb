class TreeSet
    attr_reader trees:

    def initialize
        @trees ={}
        @trees[red: 4]
        @trees[green: 4]
        @trees[blue:  4]
        @trees[yellow: 4]        
    end     
    def treeRemove color
        return false if @trees[color.to_sym] = 0 
        @trees[color.to_sym] -= 1         
    end
end

class Basket
    attr_reader :number
    def initialize value
        @number = 0
        @capacity = value
    end
end

class Field
    attr_reader :tree_set , :basket 

    def initialize
        @tree_set = TreeSet.new
        @basket = Basket.new
    end    
end