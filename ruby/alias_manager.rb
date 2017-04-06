#INPUT: real name
# 1. swap the first and last name
# 2. change all the vowels to the next vowel (vowel.next)
# 3. change all the consonants to the next consonant (consonant.next)
#OUTPUT: spy name

def spy_name(realname)
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	realname.split(" ")
	realname.reverse!
	for i in realname[0]
		if realname[0][i].downcase.index(vowels) 
			"a" == "e"
			"e" == "i"
			"i" == "o"
			"o" == "u"
			"u" == "a"
		end
		while realname[0][i] 
	for j in realname[1]
		if realname[1][i].downcase.index(vowels)
			"a" == "e"
			"e" == "i"
			"i" == "o"
			"o" == "u"
			"u" == "a"
		end

	spyname
end

realname("Kris Weber")