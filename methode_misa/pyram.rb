def number_asker

	p "Bonjour, combien d'étages voulez-vous? "
	gets.chomp.to_i
end

def buildind_pyramid(floor)

	p "Voici votre pyramide: "
	floor.times { |j| puts '#' * (j+1)}

	end

def perform

	buildind_pyramid(number_asker)

end

perform