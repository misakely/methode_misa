class MonterEscalier
$position = 1
def building_pyramid(initial)
    pos = initial.to_i
    @number = 10
    diez = 1
    while @number > 0
        if @number == pos
            space = @number - 1
            puts " "*space << "6" << "#"*diez
        else
            puts " "*@number << "#"*diez
        end
        @number -= 1
        diez += 2
    end
end
def fin
    puts "Voulez-vous rejouer? (y/n) "
            reps = gets.chomp.to_s.downcase
            if reps == "y"
            $position = 1
            building_pyramid($position)
            elsif reps == "n"
                exit
            else 
                $position = 1
                puts "Entrer : 'y' ou 'n'"
                fin
            end
end
def lancer_de
    # 5 || 6 avance d'une etage
    # 1 descend d'une etage
    # 2 3 4 rien ne se passe
    # 10 terminer 
    puts "BIENVENUE DANS LA MONTER EN ESCALIER"  
    building_pyramid($position)
    puts "Entrer un chiffre"
    print "> "   
    chw = gets.chomp.to_i
    if chw == 5 || chw == 6
        $position += 1
        if $position == 11
            puts "==========================="
            puts "|| Vous avez gagner !!!! ||"
            puts "==========================="
            fin
        else
            building_pyramid($position)
            puts "Vous avez avancer d'une case : maintenant vous etes en #{$position - 1} etages"
        end
    elsif chw == 1
        $position -= 1
        if $position == 0
            $position = 1 
            building_pyramid($position)  
            puts "GAME OVER : il faut monter au lieu de descendre" 
            fin   
            else
            puts "Vous avez reculer d'une case : maintenant vous etes en #{$position - 1} etages"
            end
    elsif chw == 2 || chw == 3 || chw == 4
        building_pyramid($position)
        puts "Votre avatar a boudé au #{$position - 1} etages"
    else 
        building_pyramid($position)
        puts "Nombre entre 1 et 6 seulement"
    end
    lancer_de
end
end
jouer = MonterEscalier.new
jouer.lancer_de