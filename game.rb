# Hind
bridge = {
    :pilar_count => 6
}
puts bridge

def remove_pilar board
    board[:bridge][:pilar_count] -= 1
end

# El khalil

animals = ["fox", "bear", "rabbit", "pinguin"]
puts animals
places = [
    "iceflo_igloo",
    "iceflo_fishing",
    "bridge"
]
puts places

# Ouissam - vérifier iglou

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
    dice = [ "igloo", "bridge", "ice", "igloo", "bridge", "ice"].shuffle
    dice[0]
end

puts "Votre dé affiche: #{shoot}"

# Patrick

#Ouissem - principal
def init 
    board={field: {animals: animals_list} , bridge: {animals: [] , pilar_count: 6} , igloo: {animals: []}}    
    return board
end

board = init   # initialiser le jeux
dice = shoot
begin
    if dice == "bridge" 
        move_field_bridge
    elsif dice=="ice"
        remove_pilar
    else
        move_bridge_igloo
    end
end while (check_home board)=="relaunch"



