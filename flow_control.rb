require 'pry'

#EXERCISE 1
#
#puts "Do you like animals? "
#answer = "zero"
#var_control = false
#var_yes = false
#var_no = false
#while  var_control == false
#	answer = gets.chomp
#	if answer == "yes" || answer == "Yes"
#		var_yes = true
#		puts "Then you have to take care of them."
#
#	elsif answer == "no" || answer == "No"
#		var_no = true
#		puts "Then you are a bad person."
#	else
#	puts "Wrong answer. Try again: "
#	end
#var_control = var_yes || var_no
##binding.pry
#end
	
#EXERCISE 2

my_hash = {}

my_hash["AST"]="Asturias"
my_hash["GAL"]="Galicia"

my_hash.each do |key,value|
	puts "#{key} stands for #{value}"
end
