# Release 1
# module Shout

# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!" + " :D"
# 	end

# end


# driver code
# p Shout.yell_happily("Boo-yah")
# p Shout.yell_angrily("Crap")


# Release 3
 module Shout

 	def yell_angrily(words)
 		words + "!!!" + " :("
 	end

 	def yell_happily(words)
 		words + "!!!" + " :D"
 	end

 end

 class drill_sergeant
 	include Shout
 end

 class overexcited_child
 	include Shout
 end