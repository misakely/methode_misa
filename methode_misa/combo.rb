def ask

	puts "Comment vous appelez vous?"
	gets.chomp.to_str
	
end

def coucou(name)
	puts "Bonjour #{name}"
end

def combo

	coucou(ask)
	
end

combo