@animals_list =[] 
places =[]
# Hind
bridge = {
    :pilar_count => 6
}
puts bridge

def remove_pilar board
    board[:bridge][:pilar_count] -= 1
end

def move_bridge_igloo board

end

# El khalil
def init_animals_places
    @animals_list = ["fox", "bear", "rabbit", "pinguin"]
    
    places = [
        "iceflo_igloo",
        "iceflo_fishing",
        "bridge"
    ]
end

# Ouissam - vérifier iglou
def move_bridge_igloo board
end

def check_home board
    if board[:igloo][:animals].length == 4
        puts("partie gagnée")
        return "win"
    elsif board[:bridge][:pilar_count] == 0        
        puts("partie perdu")
        return "lost"
    else
        puts("Partie en cours, lancée suivante")
        return "relaunch"
    end
end

# Johann

def shoot
    dice = [ "igloo", "bridge", "ice"].shuffle
    dice[0]
end

#puts "Votre dé affiche: #{shoot}"

# Patrick

#Ouissem - principal
def init 
    board={field: {animals: @animals_list} , bridge: {animals: [] , pilar_count: 6} , igloo: {animals: []}}    
    return board
end

init_animals_places
board = init   # initialiser le jeux
dice = shoot
begin
    if dice == "bridge" 
        move_field_bridge
    elsif dice=="ice"
        remove_pilar board
    else
        move_bridge_igloo board
    end
end while (check_home board)=="relaunch"



