# Hind
bridge = {
    :pilar_count => 6
}
puts bridge

# El khalil

animaux = ['chat', 'ours', 'renard', 'lapin']
puts animaux

# Ouissam - vérifier iglou

def check_home board
    if board[igloo] == 6
        puts("partie gagnée")
        return "win"
    elsif board[:bridge][pilars] == 0        
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
    board={field: {animals: 4} , bridge: {animals: 0 , pilars: 6} , igloo: {animals: 0}}    
    return board
end

board = init   # initialiser le jeux
dice = shoot
begin
    if dice == "bridge" 
        move_field_bridge
    elsif dice==pilars
        remove_pilars
    else
        move_bridge_igloo
    end
end while (check_home board)=="relaunch"



