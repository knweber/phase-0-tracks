module Shout

	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + "!!!" + " :D"
	end

end


# driver code
p Shout.yell_happily("Boo-yah")
p Shout.yell_angrily("Crap")