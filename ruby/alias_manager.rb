#INPUT: real name
# 1. swap the first and last name
# 2. change all the vowels to the next vowel (vowel.next)
# 3. change all the consonants to the next consonant (consonant.next)
#OUTPUT: spy name

def spy_name(realname)
	vowels = ['a','e','i','o','u']
	consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
	letteredName = realname.downcase.split("")
end

spy_name("Kris Weber")