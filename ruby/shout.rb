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

 class Drill_sergeant
 	include Shout
 end

 class Overexcited_child
 	include Shout
 end

 #driver code

 sergeant1 = Drill_sergeant.new
 terrible_toddler = Overexcited_child.new
 
 p sergeant1.yell_angrily("Give me 10 push-ups now")
 p sergeant1.yell_happily("You passed")
 p terrible_toddler.yell_happily("Time for candy")
 p terrible_toddler.yell_angrily("She did it")