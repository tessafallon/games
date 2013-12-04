def pig_latin(word)
	ltr = word.chars.first
	word.slice!(ltr)
	word << ltr << "ay"
	puts word
end

pig_latin("brains")