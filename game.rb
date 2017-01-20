@animals_list =[] 
places =[]

bridge = {
    :pilar_count => 6
}
puts bridge

def remove_pilar board
    board[:bridge][:pilar_count] -= 1
end

def move_bridge_igloo board
    if board[:bridge][:animals].length > 0
        print "Choisir un numero d'animal parmi : "
        print board[:bridge][:animals]
        numero = gets.chomp.to_i
        board[:igloo][:animals].push board[:bridge][:animals][numero-1]
        board[:bridge][:animals].delete_at numero-1
    end
end

def init_animals_places
    @animals_list = ["fox", "bear", "rabbit", "pinguin"]
    
    places = [
        "iceflo_igloo",
        "iceflo_fishing",
        "bridge"
    ]
end

def move_field_bridge board
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


def shoot
    dice = [ "igloo", "bridge", "ice"].shuffle
    dice[0]
end


def init 
    board={field: {animals: @animals_list} , bridge: {animals: [] , pilar_count: 6} , igloo: {animals: []}}    
    return board
end

init_animals_places
board = init   # initialiser le jeux
dice = shoot
move_bridge_igloo board
begin
    if dice == "bridge" 
        move_field_bridge board
    elsif dice=="ice"
        remove_pilar board
    else
        move_bridge_igloo board
    end
end while (check_home board)=="relaunch"



