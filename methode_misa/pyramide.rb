def number_asker

	p "Bonjour, combien d'étages voulez-vous? "
	ligne = gets.chomp.to_i
	variable = 1
	puts " le voici: "
	while ligne > 0
		ligne -= 1
		puts " "*ligne << "*"*variable
		variable += 2
	end
end

number_asker