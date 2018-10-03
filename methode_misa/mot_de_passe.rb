def define_password

	puts "Veuillez renseigner votre mot de passe svp"
	print ">"
	password = gets.chomp
	
end


def connect(password)

	puts "Veuillez saisir à nouveau votre mot de passe "
	print ">"
	verification = gets.chomp

	while verification != password

		puts "valeur incorrect veuillez saisir à nouveau votre mot de passe "
		print ">"
		verification = gets.chomp
	end
	puts "tu es connecté"
	
end

def perform

	connect(define_password)
	
end

perform 

