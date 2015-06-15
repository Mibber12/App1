class TodoList < ActiveRecord::Base
#	before_create :set_title_to_empty

#	def set_title_to_empty
#		self[:title] = '' unless self[:title]
#	end # dus als we dit uit cemmenten zou de test moeten falen.
end
#Is dit de test? Wat zit er in spec.rb? En zie ik resultaat van test in terminal?
# Dit is je code, in spec zit de test. Test Driven Development zegt dat je eerst een test schrijft die faalt dan de code om het op te lossen. 
#Dus als ik het goed begrijp, schrijf je eerst een 'foutcode' om te achterhalen waar de code faalt.

# 