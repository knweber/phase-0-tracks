#INPUT: real name
# 1. swap the first and last name
# 2. change all the vowels to the next vowel (vowel.next)
# 3. change all the consonants to the next consonant (consonant.next)
#OUTPUT: spy name

def spy_name(realname)
	vowels = ['a','e','i','o','u']
	consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
	reverseName = realname.downcase.split(" ").reverse!
	fullName = reverseName[0] + " " + reverseName[1]
	letteredName = fullName.split('')
 	letteredName.map! do |letter|
 	  if vowels.include?(letter)
 	    vowels.rotate(1)[vowels.index(letter)]
 	  elsif consonants.include?(letter)
 	    consonants.rotate(1)[consonants.index(letter)]
 	  end
 	end
fullName = letteredName.join('').insert(reverseName[0].length,' ')
fullName.capitalize!
twoNames = fullName.split(" ")
twoNames[1].capitalize!
fullName = twoNames[0] + " " + twoNames[1]
p fullName
end

puts "Please type your name you wish to change"
spy_name(gets.chomp)